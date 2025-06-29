	.file	"main.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.hidden	main                            # -- Begin function main
	.globl	main
	.p2align	4
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:                                # %._crit_edge.i.i
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$152, %rsp
	.cfi_def_cfa_offset 176
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%fs:40, %rax
	movq	%rax, 144(%rsp)
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$1, %edx
	callq	setenv@PLT
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.3(%rip), %rsi
	movl	$1, %edx
	callq	setenv@PLT
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.5(%rip), %rsi
	xorl	%edx, %edx
	callq	setenv@PLT
	leaq	56(%rsp), %r14
	movq	%r14, 40(%rsp)
	movabsq	$7307199721475492940, %rax      # imm = 0x6568636E75614C4C
	movq	%rax, 56(%rsp)
	movw	$114, 64(%rsp)
	movq	$9, 48(%rsp)
.Ltmp0:
	leaq	40(%rsp), %rdi
	callq	_ZN6Louvre9LLauncher11startDaemonERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.Ltmp1:
# %bb.1:
	movq	40(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.LBB0_3
# %bb.2:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	movq	56(%rsp), %rsi
	incq	%rsi
	callq	_ZdlPvm@PLT
.LBB0_3:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	leaq	40(%rsp), %rdi
	callq	_ZN6Louvre11LCompositorC2Ev@PLT
	movq	_ZTV10Compositor@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, 40(%rsp)
	leaq	56(%rsp), %rdi
.Ltmp3:
	leaq	.L.str.11(%rip), %rsi
	movl	$2, %edx
	callq	_ZNSt10filesystem7__cxx114pathC2IA40_cS1_EERKT_NS1_6formatE
.Ltmp4:
# %bb.4:                                # %_ZN10CompositorC2Ev.exit
	leaq	120(%rsp), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 96(%rsp)
	movq	$0, 112(%rsp)
	movq	%rax, 128(%rsp)
	movq	%rax, 120(%rsp)
	movq	$0, 136(%rsp)
.Ltmp6:
	leaq	40(%rsp), %rdi
	callq	_ZN6Louvre11LCompositor5startEv@PLT
.Ltmp7:
# %bb.5:
	testb	%al, %al
	je	.LBB0_6
# %bb.15:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i18
.Ltmp11:
	movl	$135, %edi
	callq	_Znwm@PLT
.Ltmp12:
# %bb.16:                               # %.noexc21
	movq	%rax, %rbx
	leaq	24(%rsp), %r14
	movq	%rax, 8(%rsp)
	movq	$134, 24(%rsp)
	leaq	.L.str.8(%rip), %rsi
	movl	$134, %edx
	movq	%rax, %rdi
	callq	memcpy@PLT
	movq	$134, 16(%rsp)
	movb	$0, 134(%rbx)
.Ltmp14:
	leaq	8(%rsp), %rdi
	callq	_ZN6Louvre9LLauncher6launchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.Ltmp15:
# %bb.17:
	movq	8(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.LBB0_19
# %bb.18:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
	movq	24(%rsp), %rsi
	incq	%rsi
	callq	_ZdlPvm@PLT
.LBB0_19:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
	leaq	40(%rsp), %rbx
	.p2align	4
.LBB0_20:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	_ZNK6Louvre11LCompositor5stateEv@PLT
	testl	%eax, %eax
	je	.LBB0_21
# %bb.22:                               #   in Loop: Header=BB0_20 Depth=1
.Ltmp17:
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	_ZN6Louvre11LCompositor11processLoopEi@PLT
.Ltmp18:
	jmp	.LBB0_20
.LBB0_6:
	movl	$1, %ebx
.Ltmp8:
	leaq	.L.str.7(%rip), %rdi
	xorl	%eax, %eax
	callq	_ZN6Louvre4LLog5fatalEPKcz@PLT
.Ltmp9:
	jmp	.LBB0_7
.LBB0_21:
	xorl	%ebx, %ebx
.LBB0_7:                                # %.loopexit
	leaq	40(%rsp), %rdi
	callq	_ZN10CompositorD2Ev
	movq	%fs:40, %rax
	cmpq	144(%rsp), %rax
	jne	.LBB0_29
# %bb.8:                                # %SP_return37
	movl	%ebx, %eax
	addq	$152, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB0_24:
	.cfi_def_cfa_offset 176
.Ltmp16:
	movq	%rax, %rbx
	movq	8(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.LBB0_28
# %bb.25:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
	movq	24(%rsp), %rsi
	incq	%rsi
	callq	_ZdlPvm@PLT
	jmp	.LBB0_28
.LBB0_23:
.Ltmp13:
	jmp	.LBB0_27
.LBB0_9:
.Ltmp5:
	movq	%rax, %rbx
	leaq	40(%rsp), %rdi
	callq	_ZN6Louvre11LCompositorD2Ev@PLT
	jmp	.LBB0_10
.LBB0_12:
.Ltmp2:
	movq	%rax, %rbx
	movq	40(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.LBB0_10
# %bb.13:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
	movq	56(%rsp), %rsi
	incq	%rsi
	callq	_ZdlPvm@PLT
	jmp	.LBB0_10
.LBB0_14:                               # %.loopexit.split-lp
.Ltmp10:
	jmp	.LBB0_27
.LBB0_26:                               # %.loopexit30
.Ltmp19:
.LBB0_27:
	movq	%rax, %rbx
.LBB0_28:
	leaq	40(%rsp), %rdi
	callq	_ZN10CompositorD2Ev
.LBB0_10:                               # %common.resume
	movq	%fs:40, %rax
	cmpq	144(%rsp), %rax
	jne	.LBB0_29
# %bb.11:                               # %SP_return
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.LBB0_29:                               # %CallStackCheckFailBlk
	callq	__stack_chk_fail@PLT
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table0:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp10-.Lfunc_begin0          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.uleb128 .Ltmp13-.Lfunc_begin0          #     jumps to .Ltmp13
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp14-.Ltmp12                #   Call between .Ltmp12 and .Ltmp14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp15-.Ltmp14                #   Call between .Ltmp14 and .Ltmp15
	.uleb128 .Ltmp16-.Lfunc_begin0          #     jumps to .Ltmp16
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp18-.Ltmp17                #   Call between .Ltmp17 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin0          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin0           # >> Call Site 8 <<
	.uleb128 .Ltmp9-.Ltmp8                  #   Call between .Ltmp8 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin0          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 9 <<
	.uleb128 .Lfunc_end0-.Ltmp9             #   Call between .Ltmp9 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN10CompositorD2Ev,"axG",@progbits,_ZN10CompositorD2Ev,comdat
	.hidden	_ZN10CompositorD2Ev             # -- Begin function _ZN10CompositorD2Ev
	.weak	_ZN10CompositorD2Ev
	.p2align	4
	.type	_ZN10CompositorD2Ev,@function
_ZN10CompositorD2Ev:                    # @_ZN10CompositorD2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	80(%rdi), %r15
	movq	80(%rdi), %r14
	cmpq	%r15, %r14
	jne	.LBB1_1
.LBB1_4:                                # %_ZNSt7__cxx1110_List_baseI17DestroyedToplevelSaIS1_EED2Ev.exit
	movq	72(%rbx), %r14
	testq	%r14, %r14
	je	.LBB1_10
# %bb.5:
	leaq	16(%r14), %rdi
	callq	_ZN6Louvre6LTimerD1Ev@PLT
	movq	8(%r14), %r15
	testq	%r15, %r15
	je	.LBB1_7
# %bb.6:                                # %_ZNKSt14default_deleteIW12TextRenderer12TextRendererEclEPS1_.exit.i.i.i.i
	movq	%r15, %rdi
	callq	_ZNW12TextRenderer12TextRendererD1Ev@PLT
	movl	$24, %esi
	movq	%r15, %rdi
	callq	_ZdlPvm@PLT
.LBB1_7:                                # %_ZNSt10unique_ptrIW12TextRenderer12TextRendererSt14default_deleteIS1_EED2Ev.exit.i.i.i
	movq	$0, 8(%r14)
	movq	(%r14), %r15
	testq	%r15, %r15
	je	.LBB1_9
# %bb.8:                                # %_ZNKSt14default_deleteIN6Louvre8LTextureEEclEPS1_.exit.i.i.i.i
	movq	%r15, %rdi
	callq	_ZN6Louvre8LTextureD1Ev@PLT
	movl	$104, %esi
	movq	%r15, %rdi
	callq	_ZdlPvm@PLT
.LBB1_9:                                # %_ZNKSt14default_deleteI5ClockEclEPS0_.exit.i
	movl	$240, %esi
	movq	%r14, %rdi
	callq	_ZdlPvm@PLT
.LBB1_10:                               # %_ZNSt10unique_ptrI5ClockSt14default_deleteIS0_EED2Ev.exit
	movq	$0, 72(%rbx)
	movq	64(%rbx), %r14
	testq	%r14, %r14
	je	.LBB1_12
# %bb.11:                               # %_ZNKSt14default_deleteIN6Louvre8LXCursorEEclEPS1_.exit.i
	movq	%r14, %rdi
	callq	_ZN6Louvre8LTextureD1Ev@PLT
	movl	$112, %esi
	movq	%r14, %rdi
	callq	_ZdlPvm@PLT
.LBB1_12:                               # %_ZNSt10unique_ptrIN6Louvre8LXCursorESt14default_deleteIS1_EED2Ev.exit
	movq	$0, 64(%rbx)
	movq	56(%rbx), %r14
	testq	%r14, %r14
	je	.LBB1_14
# %bb.13:                               # %_ZNKSt14default_deleteIN6Louvre8LTextureEEclEPS1_.exit.i
	movq	%r14, %rdi
	callq	_ZN6Louvre8LTextureD1Ev@PLT
	movl	$104, %esi
	movq	%r14, %rdi
	callq	_ZdlPvm@PLT
.LBB1_14:                               # %_ZNSt10unique_ptrIN6Louvre8LTextureESt14default_deleteIS1_EED2Ev.exit
	movq	$0, 56(%rbx)
	movq	48(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB1_16
# %bb.15:
	leaq	48(%rbx), %rdi
	callq	_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@PLT
.LBB1_16:                               # %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
	movq	$0, 48(%rbx)
	movq	16(%rbx), %rdi
	leaq	32(%rbx), %rax
	cmpq	%rax, %rdi
	je	.LBB1_18
# %bb.17:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	movq	(%rax), %rsi
	incq	%rsi
	callq	_ZdlPvm@PLT
.LBB1_18:                               # %_ZNSt10filesystem7__cxx114pathD2Ev.exit
	movq	%rbx, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZN6Louvre11LCompositorD2Ev@PLT # TAILCALL
	.p2align	4
.LBB1_3:                                # %_ZNSt7__cxx1110_List_baseI17DestroyedToplevelSaIS1_EE15_M_destroy_nodeEPSt10_List_nodeIS1_E.exit.i.i
                                        #   in Loop: Header=BB1_1 Depth=1
	.cfi_def_cfa_offset 64
	movl	$72, %esi
	movq	%r14, %rdi
	callq	_ZdlPvm@PLT
	movq	%r12, %r14
	cmpq	%r15, %r12
	je	.LBB1_4
.LBB1_1:                                # %.lr.ph.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
	movq	(%r14), %r12
	movq	48(%r14), %rdi
	leaq	48(%r14), %r13
	cmpq	%r13, %rdi
	je	.LBB1_3
	.p2align	4
.LBB1_2:                                # %.lr.ph.i.i.i.i.i.i.i
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi), %rbp
	movl	$24, %esi
	callq	_ZdlPvm@PLT
	movq	%rbp, %rdi
	cmpq	%r13, %rbp
	jne	.LBB1_2
	jmp	.LBB1_3
.Lfunc_end1:
	.size	_ZN10CompositorD2Ev, .Lfunc_end1-_ZN10CompositorD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt10filesystem7__cxx114pathC2IA40_cS1_EERKT_NS1_6formatE,"axG",@progbits,_ZNSt10filesystem7__cxx114pathC2IA40_cS1_EERKT_NS1_6formatE,comdat
	.hidden	_ZNSt10filesystem7__cxx114pathC2IA40_cS1_EERKT_NS1_6formatE # -- Begin function _ZNSt10filesystem7__cxx114pathC2IA40_cS1_EERKT_NS1_6formatE
	.weak	_ZNSt10filesystem7__cxx114pathC2IA40_cS1_EERKT_NS1_6formatE
	.p2align	4
	.type	_ZNSt10filesystem7__cxx114pathC2IA40_cS1_EERKT_NS1_6formatE,@function
_ZNSt10filesystem7__cxx114pathC2IA40_cS1_EERKT_NS1_6formatE: # @_ZNSt10filesystem7__cxx114pathC2IA40_cS1_EERKT_NS1_6formatE
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	callq	strlen@PLT
	movq	%rax, %r14
	leaq	16(%rbx), %r13
	movq	%r13, (%rbx)
	movq	%r13, %r12
	cmpq	$16, %rax
	jb	.LBB2_3
# %bb.1:
	movabsq	$9223372036854775807, %rax      # imm = 0x7FFFFFFFFFFFFFFF
	cmpq	%rax, %r14
	jae	.LBB2_17
# %bb.2:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
	leaq	1(%r14), %rdi
	callq	_Znwm@PLT
	movq	%rax, %r12
	movq	%rax, (%rbx)
	movq	%r14, 16(%rbx)
.LBB2_3:                                # %._crit_edge.i.i.i.i
	testq	%r14, %r14
	je	.LBB2_7
# %bb.4:                                # %._crit_edge.i.i.i.i
	cmpq	$1, %r14
	jne	.LBB2_6
# %bb.5:
	movzbl	(%r15), %eax
	movb	%al, (%r12)
	jmp	.LBB2_7
.LBB2_6:
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
.LBB2_7:
	movq	%r14, 8(%rbx)
	movb	$0, (%r12,%r14)
	leaq	32(%rbx), %r15
.Ltmp20:
	movq	%r15, %rdi
	callq	_ZNSt10filesystem7__cxx114path5_ListC1Ev@PLT
.Ltmp21:
# %bb.8:
.Ltmp23:
	movq	%rbx, %rdi
	callq	_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@PLT
.Ltmp24:
# %bb.9:
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB2_17:                               # %.noexc.i.i.i
	.cfi_def_cfa_offset 48
	leaq	.L.str.10(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB2_11:
.Ltmp25:
	movq	%rax, %r14
	movq	(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB2_13
# %bb.12:
	movq	%r15, %rdi
	callq	_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@PLT
.LBB2_13:                               # %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
	movq	$0, (%r15)
	jmp	.LBB2_14
.LBB2_10:
.Ltmp22:
	movq	%rax, %r14
.LBB2_14:
	movq	(%rbx), %rdi
	cmpq	%r13, %rdi
	je	.LBB2_16
# %bb.15:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	movq	(%r13), %rsi
	incq	%rsi
	callq	_ZdlPvm@PLT
.LBB2_16:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end2:
	.size	_ZNSt10filesystem7__cxx114pathC2IA40_cS1_EERKT_NS1_6formatE, .Lfunc_end2-_ZNSt10filesystem7__cxx114pathC2IA40_cS1_EERKT_NS1_6formatE
	.cfi_endproc
	.section	.gcc_except_table._ZNSt10filesystem7__cxx114pathC2IA40_cS1_EERKT_NS1_6formatE,"aG",@progbits,_ZNSt10filesystem7__cxx114pathC2IA40_cS1_EERKT_NS1_6formatE,comdat
	.p2align	2, 0x0
GCC_except_table2:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp20-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp22-.Lfunc_begin1          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp24-.Ltmp23                #   Call between .Ltmp23 and .Ltmp24
	.uleb128 .Ltmp25-.Lfunc_begin1          #     jumps to .Ltmp25
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Lfunc_end2-.Ltmp24            #   Call between .Ltmp24 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"MOZ_ENABLE_WAYLAND"
	.size	.L.str, 19

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"1"
	.size	.L.str.1, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"QT_QPA_PLATFORM"
	.size	.L.str.2, 16

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"wayland-egl"
	.size	.L.str.3, 12

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"LOUVRE_WAYLAND_DISPLAY"
	.size	.L.str.4, 23

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"wayland-2"
	.size	.L.str.5, 10

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"LLauncher"
	.size	.L.str.6, 10

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"[SmalleWM] Failed to start compositor."
	.size	.L.str.7, 39

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=wlroots | systemctl --user restart xdg-desktop-portal"
	.size	.L.str.8, 135

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"basic_string::_M_create"
	.size	.L.str.10, 24

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"/home/rempas/Projects/MySmallWM/assets/"
	.size	.L.str.11, 40

	.section	".linker-options","e",@llvm_linker_options
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3, 0x0
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"clang version 20.1.6"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _Unwind_Resume
	.addrsig_sym __stack_chk_fail
