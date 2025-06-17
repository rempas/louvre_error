import Pointer;

#include <LToplevelMoveSession.h>
#include <LToplevelResizeSession.h>
#include <LDNDIconRole.h>
#include <LDND.h>
#include <LKeyboard.h>
#include <LClient.h>
#include <LSeat.h>
#include <LTime.h>
#include <LCursor.h>
#include <LLauncher.h>
#include <unistd.h>

#include "../Output.h"

void Pointer::pointerButtonEvent(const LPointerButtonEvent &event) {
   Output *cursorOutput { static_cast<Output*>(cursor()->output()) };
   bool pointerOverTerminalIcon { false };
   const bool activeDND { seat()->dnd()->dragging() && seat()->dnd()->triggeringEvent().type() != LEvent::Type::Touch };

   if (cursorOutput)
      pointerOverTerminalIcon = cursorOutput->terminalIconRect.containsPoint(cursor()->pos());

   if (event.state() == LPointerButtonEvent::Released && event.button() == LPointerButtonEvent::Left)
      if (pointerOverTerminalIcon)
         LLauncher::launch("wezterm");

   if (activeDND)
   {
      if (event.state() == LPointerButtonEvent::Released && event.button() == LPointerButtonEvent::Left)
         seat()->dnd()->drop();
      seat()->keyboard()->setFocus(nullptr);
      setFocus(nullptr);
      setDraggingSurface(nullptr);
      return;
   }

   if (!focus() && !pointerOverTerminalIcon)
   {
      LSurface *surface { surfaceAt(cursor()->pos()) };

      if (surface)
      {
         cursor()->setCursor(surface->client()->lastCursorRequest());
         seat()->keyboard()->setFocus(surface);
         setFocus(surface);
         sendButtonEvent(event);

         if (!surface->popup() && !focus()->isPopupSubchild())
               seat()->dismissPopups();
      }
      else
      {
         seat()->keyboard()->setFocus(nullptr);
         seat()->dismissPopups();
      }

      return;
   }

   if (event.button() != LPointerButtonEvent::Left)
   {
      sendButtonEvent(event);
      return;
   }

   // Left button pressed
   if (event.state() == LPointerButtonEvent::Pressed)
   {
      if (pointerOverTerminalIcon)
      {
         cursorOutput->newDamage.addRect(cursorOutput->terminalIconRect);
         cursorOutput->terminalIconAlpha = 0.6f;
         cursorOutput->repaint();
         return;
      }

      setDraggingSurface(focus());

      if (!focus()->popup() && !focus()->isPopupSubchild())
      {
         seat()->keyboard()->setFocus(focus());

         if (!focus())
               return;
      }

      sendButtonEvent(event);

      if (focus()->toplevel() && !focus()->toplevel()->activated())
         focus()->toplevel()->configureState(focus()->toplevel()->pendingConfiguration().state | LToplevelRole::Activated);

      if (!focus()->popup() && !focus()->isPopupSubchild())
         seat()->dismissPopups();

      if (!focus() || focus() == compositor()->surfaces().back())
         return;

      if (focus()->parent())
         focus()->topmostParent()->raise();
      else
         focus()->raise();
   }
   // Left button released
   else
   {
      if (pointerOverTerminalIcon)
      {
         cursorOutput->newDamage.addRect(cursorOutput->terminalIconRect);
         cursorOutput->terminalIconAlpha = 0.9f;
         cursorOutput->repaint();
         return;
      }

      sendButtonEvent(event);

      // Stop pointer toplevel resizing sessions
      for (auto it = seat()->toplevelResizeSessions().begin(); it != seat()->toplevelResizeSessions().end();)
      {
         if ((*it)->triggeringEvent().type() != LEvent::Type::Touch)
               it = (*it)->stop();
         else
               it++;
      }

      // Stop pointer toplevel moving sessions
      for (auto it = seat()->toplevelMoveSessions().begin(); it != seat()->toplevelMoveSessions().end();)
      {
         if ((*it)->triggeringEvent().type() != LEvent::Type::Touch)
               it = (*it)->stop();
         else
               it++;
      }

      // We stop sending events to the surface on which the left button was being held down
      setDraggingSurface(nullptr);

      if (!focus()->pointerConstraintEnabled() && !focus()->inputRegion().containsPoint(cursor()->pos() - focus()->rolePos()))
      {
         setFocus(nullptr);
         cursor()->useDefault();
         cursor()->setVisible(true);
      }
   }
}
