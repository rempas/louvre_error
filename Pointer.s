	.file	"Pointer.mpp"
	.section	.text._ZNW7Pointer7PointerD0Ev,"axG",@progbits,_ZNW7Pointer7PointerD0Ev,comdat
	.hidden	_ZNW7Pointer7PointerD0Ev        # -- Begin function _ZNW7Pointer7PointerD0Ev
	.weak	_ZNW7Pointer7PointerD0Ev
	.p2align	4
	.type	_ZNW7Pointer7PointerD0Ev,@function
_ZNW7Pointer7PointerD0Ev:               # @_ZNW7Pointer7PointerD0Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	_ZN6Louvre8LPointerD2Ev@PLT
	movl	$56, %esi
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZdlPvm@PLT                     # TAILCALL
.Lfunc_end0:
	.size	_ZNW7Pointer7PointerD0Ev, .Lfunc_end0-_ZNW7Pointer7PointerD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.globl	_ZGIW7Pointer                   # -- Begin function _ZGIW7Pointer
	.p2align	4
	.type	_ZGIW7Pointer,@function
_ZGIW7Pointer:                          # @_ZGIW7Pointer
# %bb.0:
	retq
.Lfunc_end1:
	.size	_ZGIW7Pointer, .Lfunc_end1-_ZGIW7Pointer
                                        # -- End function
	.hidden	_ZTVW7Pointer7Pointer           # @_ZTVW7Pointer7Pointer
	.type	_ZTVW7Pointer7Pointer,@object
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTVW7Pointer7Pointer
	.p2align	3, 0x0
_ZTVW7Pointer7Pointer:
	.quad	0
	.quad	_ZTIW7Pointer7Pointer
	.quad	_ZN6Louvre8LPointerD2Ev
	.quad	_ZNW7Pointer7PointerD0Ev
	.quad	_ZNW7Pointer7Pointer16pointerMoveEventERKN6Louvre17LPointerMoveEventE
	.quad	_ZNW7Pointer7Pointer18pointerButtonEventERKN6Louvre19LPointerButtonEventE
	.quad	_ZN6Louvre8LPointer18pointerScrollEventERKNS_19LPointerScrollEventE
	.quad	_ZN6Louvre8LPointer22pointerSwipeBeginEventERKNS_23LPointerSwipeBeginEventE
	.quad	_ZN6Louvre8LPointer23pointerSwipeUpdateEventERKNS_24LPointerSwipeUpdateEventE
	.quad	_ZN6Louvre8LPointer20pointerSwipeEndEventERKNS_21LPointerSwipeEndEventE
	.quad	_ZN6Louvre8LPointer22pointerPinchBeginEventERKNS_23LPointerPinchBeginEventE
	.quad	_ZN6Louvre8LPointer23pointerPinchUpdateEventERKNS_24LPointerPinchUpdateEventE
	.quad	_ZN6Louvre8LPointer20pointerPinchEndEventERKNS_21LPointerPinchEndEventE
	.quad	_ZN6Louvre8LPointer21pointerHoldBeginEventERKNS_22LPointerHoldBeginEventE
	.quad	_ZN6Louvre8LPointer19pointerHoldEndEventERKNS_20LPointerHoldEndEventE
	.quad	_ZN6Louvre8LPointer16setCursorRequestERKNS_13LClientCursorE
	.quad	_ZN6Louvre8LPointer12focusChangedEv
	.size	_ZTVW7Pointer7Pointer, 136

	.hidden	_ZTIW7Pointer7Pointer           # @_ZTIW7Pointer7Pointer
	.type	_ZTIW7Pointer7Pointer,@object
	.globl	_ZTIW7Pointer7Pointer
	.p2align	3, 0x0
_ZTIW7Pointer7Pointer:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSW7Pointer7Pointer
	.quad	_ZTIN6Louvre8LPointerE
	.size	_ZTIW7Pointer7Pointer, 24

	.hidden	_ZTSW7Pointer7Pointer           # @_ZTSW7Pointer7Pointer
	.type	_ZTSW7Pointer7Pointer,@object
	.section	.rodata,"a",@progbits
	.globl	_ZTSW7Pointer7Pointer
_ZTSW7Pointer7Pointer:
	.asciz	"W7Pointer7Pointer"
	.size	_ZTSW7Pointer7Pointer, 18

	.section	".linker-options","e",@llvm_linker_options
	.ident	"clang version 20.1.6"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _ZTIW7Pointer7Pointer
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTSW7Pointer7Pointer
	.addrsig_sym _ZTIN6Louvre8LPointerE
