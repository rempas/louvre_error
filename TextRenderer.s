	.file	"TextRenderer.mpp"
	.text
	.hidden	_ZNW12TextRenderer12TextRendererC2EPKc # -- Begin function _ZNW12TextRenderer12TextRendererC2EPKc
	.globl	_ZNW12TextRenderer12TextRendererC2EPKc
	.p2align	4
	.type	_ZNW12TextRenderer12TextRendererC2EPKc,@function
_ZNW12TextRenderer12TextRendererC2EPKc: # @_ZNW12TextRenderer12TextRendererC2EPKc
	.cfi_startproc
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
	subq	$32, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r13
	movq	%rdi, %r15
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	movb	$0, (%rdi)
	callq	FcInit@PLT
	callq	FcInitLoadConfigAndFonts@PLT
	movq	%rax, %rbx
	movq	%r13, %rdi
	callq	FcNameParse@PLT
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	FcConfigSubstitute@PLT
	movq	%r14, %rdi
	callq	FcDefaultSubstitute@PLT
	leaq	20(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	FcFontMatch@PLT
	movq	%rax, %r12
	movb	$0, (%r15)
	testq	%rax, %rax
	je	.LBB0_7
# %bb.1:
	movq	$0, 8(%rsp)
	leaq	.L.str(%rip), %rsi
	leaq	8(%rsp), %rcx
	movq	%r12, %rdi
	xorl	%edx, %edx
	callq	FcPatternGetString@PLT
	testl	%eax, %eax
	jne	.LBB0_7
# %bb.2:
	movq	8(%rsp), %rdx
	leaq	.L.str.1(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
	callq	_ZN6Louvre4LLog5debugEPKcz@PLT
	leaq	8(%r15), %r13
	movq	%r13, %rdi
	callq	FT_Init_FreeType@PLT
	testl	%eax, %eax
	je	.LBB0_4
# %bb.3:
	leaq	.L.str.2(%rip), %rdi
	xorl	%eax, %eax
	callq	_ZN6Louvre4LLog5errorEPKcz@PLT
	jmp	.LBB0_7
.LBB0_4:
	movq	8(%r15), %rdi
	movq	8(%rsp), %rsi
	leaq	16(%r15), %rcx
	xorl	%edx, %edx
	callq	FT_New_Face@PLT
	testl	%eax, %eax
	je	.LBB0_6
# %bb.5:
	leaq	.L.str.3(%rip), %rdi
	xorl	%eax, %eax
	callq	_ZN6Louvre4LLog5errorEPKcz@PLT
	movq	(%r13), %rdi
	callq	FT_Done_FreeType@PLT
	jmp	.LBB0_7
.LBB0_6:
	movb	$1, (%r15)
.LBB0_7:
	movq	%r12, %rdi
	callq	FcPatternDestroy@PLT
	movq	%r14, %rdi
	callq	FcPatternDestroy@PLT
	movq	%rbx, %rdi
	callq	FcConfigDestroy@PLT
	callq	FcFini@PLT
	movq	%fs:40, %rax
	cmpq	24(%rsp), %rax
	jne	.LBB0_9
# %bb.8:                                # %SP_return
	addq	$32, %rsp
	.cfi_def_cfa_offset 48
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
.LBB0_9:                                # %CallStackCheckFailBlk
	.cfi_def_cfa_offset 80
	callq	__stack_chk_fail@PLT
.Lfunc_end0:
	.size	_ZNW12TextRenderer12TextRendererC2EPKc, .Lfunc_end0-_ZNW12TextRenderer12TextRendererC2EPKc
	.cfi_endproc
                                        # -- End function
	.hidden	_ZNW12TextRenderer12TextRenderer8loadFontEPKc # -- Begin function _ZNW12TextRenderer12TextRenderer8loadFontEPKc
	.globl	_ZNW12TextRenderer12TextRenderer8loadFontEPKc
	.p2align	4
	.type	_ZNW12TextRenderer12TextRenderer8loadFontEPKc,@function
_ZNW12TextRenderer12TextRenderer8loadFontEPKc: # @_ZNW12TextRenderer12TextRenderer8loadFontEPKc
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movl	$24, %edi
	callq	_Znwm@PLT
	movq	%rax, %rbx
.Ltmp0:
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	_ZNW12TextRenderer12TextRendererC2EPKc
.Ltmp1:
# %bb.1:
	cmpb	$0, (%rbx)
	jne	.LBB1_3
# %bb.2:                                # %_ZNW12TextRenderer12TextRendererD2Ev.exit
	movl	$24, %esi
	movq	%rbx, %rdi
	callq	_ZdlPvm@PLT
	xorl	%ebx, %ebx
.LBB1_3:
	movq	%rbx, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB1_4:
	.cfi_def_cfa_offset 32
.Ltmp2:
	movq	%rax, %r14
	movl	$24, %esi
	movq	%rbx, %rdi
	callq	_ZdlPvm@PLT
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end1:
	.size	_ZNW12TextRenderer12TextRenderer8loadFontEPKc, .Lfunc_end1-_ZNW12TextRenderer12TextRenderer8loadFontEPKc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table1:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Lfunc_end1-.Ltmp1             #   Call between .Ltmp1 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.hidden	_ZNW12TextRenderer12TextRendererD2Ev # -- Begin function _ZNW12TextRenderer12TextRendererD2Ev
	.globl	_ZNW12TextRenderer12TextRendererD2Ev
	.p2align	4
	.type	_ZNW12TextRenderer12TextRendererD2Ev,@function
_ZNW12TextRenderer12TextRendererD2Ev:   # @_ZNW12TextRenderer12TextRendererD2Ev
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpb	$1, (%rdi)
	jne	.LBB2_3
# %bb.1:
	movq	%rdi, %rbx
	movq	16(%rdi), %rdi
.Ltmp3:
	callq	FT_Done_Face@PLT
.Ltmp4:
# %bb.2:
	movq	8(%rbx), %rdi
.Ltmp5:
	callq	FT_Done_FreeType@PLT
.Ltmp6:
.LBB2_3:
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB2_4:
	.cfi_def_cfa_offset 16
.Ltmp7:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end2:
	.size	_ZNW12TextRenderer12TextRendererD2Ev, .Lfunc_end2-_ZNW12TextRenderer12TextRendererD2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table2:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp3-.Lfunc_begin1           # >> Call Site 1 <<
	.uleb128 .Ltmp6-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp6
	.uleb128 .Ltmp7-.Lfunc_begin1           #     jumps to .Ltmp7
	.byte	1                               #   On action: 1
.Lcst_end1:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	4
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	__cxa_begin_catch@PLT
	callq	_ZSt9terminatev@PLT
.Lfunc_end3:
	.size	__clang_call_terminate, .Lfunc_end3-__clang_call_terminate
	.cfi_endproc
                                        # -- End function
	.text
	.hidden	_ZNW12TextRenderer12TextRenderer8clipTextB5cxx11EPKciiRN6Louvre14LPointTemplateIiEE # -- Begin function _ZNW12TextRenderer12TextRenderer8clipTextB5cxx11EPKciiRN6Louvre14LPointTemplateIiEE
	.globl	_ZNW12TextRenderer12TextRenderer8clipTextB5cxx11EPKciiRN6Louvre14LPointTemplateIiEE
	.p2align	4
	.type	_ZNW12TextRenderer12TextRenderer8clipTextB5cxx11EPKciiRN6Louvre14LPointTemplateIiEE,@function
_ZNW12TextRenderer12TextRenderer8clipTextB5cxx11EPKciiRN6Louvre14LPointTemplateIiEE: # @_ZNW12TextRenderer12TextRenderer8clipTextB5cxx11EPKciiRN6Louvre14LPointTemplateIiEE
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:                                # %._crit_edge.i.i
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
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	16(%rdi), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	%rax, (%rdi)
	movq	$0, 8(%rdi)
	movb	$0, 16(%rdi)
	testq	%rdx, %rdx
	je	.LBB4_28
# %bb.1:
.Ltmp8:
	movq	%r9, %r15
	movl	%r8d, %ebp
	movq	%rsi, %rdi
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	%rdx, %rsi
	movl	%ecx, %edx
	movq	%rbx, 24(%rsp)                  # 8-byte Spill
	callq	_ZNW12TextRenderer12TextRenderer20calculateTextureSizeEPKci
.Ltmp9:
# %bb.2:
	movq	%rax, (%r15)
	movq	%rax, %rcx
	shrq	$32, %rcx
	imull	%eax, %ecx
	testl	%ecx, %ecx
	movq	32(%rsp), %rdi                  # 8-byte Reload
	jle	.LBB4_28
# %bb.3:
	cmpl	%eax, %ebp
	jge	.LBB4_6
# %bb.4:
	movq	%rax, %rbx
	callq	strlen@PLT
	testq	%rax, %rax
	js	.LBB4_7
# %bb.5:
	cvtsi2ss	%rax, %xmm0
	jmp	.LBB4_8
.LBB4_6:
	movq	8(%rbx), %r15
	movq	%rdi, %r14
	callq	strlen@PLT
.Ltmp11:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movq	%r15, %rdx
	movq	%r14, %rcx
	movq	%rax, %r8
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
.Ltmp12:
	jmp	.LBB4_28
.LBB4_7:
	movq	%rax, %rcx
	shrq	%rcx
	andl	$1, %eax
	orq	%rcx, %rax
	cvtsi2ss	%rax, %xmm0
	addss	%xmm0, %xmm0
.LBB4_8:
	cvtsi2ss	%ebp, %xmm1
	mulss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ebx, %xmm0
	divss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	testl	%eax, %eax
	movq	24(%rsp), %rbx                  # 8-byte Reload
	movq	32(%rsp), %rcx                  # 8-byte Reload
	jle	.LBB4_28
# %bb.9:                                # %.preheader.preheader
	movl	%eax, %edx
	xorl	%r14d, %r14d
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB4_12
	.p2align	4
.LBB4_10:                               #   in Loop: Header=BB4_12 Depth=1
	movq	%r12, %rbp
.LBB4_11:                               #   in Loop: Header=BB4_12 Depth=1
	movb	%sil, (%rbp,%r15)
	movq	%rdi, 8(%rbx)
	movq	(%rbx), %rax
	movb	$0, 1(%rax,%r15)
	incq	%r14
	cmpq	%r14, %rdx
	je	.LBB4_21
.LBB4_12:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%r14), %esi
	movq	(%rbx), %r12
	movq	8(%rbx), %r15
	leaq	1(%r15), %rdi
	movq	16(%rbx), %r13
	cmpq	16(%rsp), %r12                  # 8-byte Folded Reload
	je	.LBB4_14
# %bb.13:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.thread.i.i
                                        #   in Loop: Header=BB4_12 Depth=1
	movq	%r13, %rax
	cmpq	%r13, %r15
	jb	.LBB4_10
	jmp	.LBB4_15
	.p2align	4
.LBB4_14:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
                                        #   in Loop: Header=BB4_12 Depth=1
	movl	$15, %eax
	cmpq	$14, %r15
	jbe	.LBB4_10
.LBB4_15:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i38
                                        #   in Loop: Header=BB4_12 Depth=1
	movb	%sil, 15(%rsp)                  # 1-byte Spill
	movabsq	$9223372036854775807, %rcx      # imm = 0x7FFFFFFFFFFFFFFF
	cmpq	%rcx, %rdi
	je	.LBB4_29
# %bb.16:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
                                        #   in Loop: Header=BB4_12 Depth=1
	addq	%rax, %rax
	movabsq	$9223372036854775806, %rbx      # imm = 0x7FFFFFFFFFFFFFFE
	cmpq	%rbx, %rax
	cmovbq	%rax, %rbx
	cmpq	%rax, %rdi
	movq	%rdi, 48(%rsp)                  # 8-byte Spill
	cmovaeq	%rdi, %rbx
	leaq	1(%rbx), %rdi
.Ltmp14:
	callq	_Znwm@PLT
.Ltmp15:
# %bb.17:                               # %.noexc40
                                        #   in Loop: Header=BB4_12 Depth=1
	movq	%rax, %rbp
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	memcpy@PLT
	cmpq	16(%rsp), %r12                  # 8-byte Folded Reload
	je	.LBB4_19
# %bb.18:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
                                        #   in Loop: Header=BB4_12 Depth=1
	incq	%r13
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	_ZdlPvm@PLT
.LBB4_19:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit.i.i
                                        #   in Loop: Header=BB4_12 Depth=1
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	%rbp, (%rax)
	movq	%rbx, 16(%rax)
	movq	%rax, %rbx
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movzbl	15(%rsp), %esi                  # 1-byte Folded Reload
	movq	48(%rsp), %rdi                  # 8-byte Reload
	jmp	.LBB4_11
.LBB4_21:
	movq	8(%rbx), %rsi
	movabsq	$9223372036854775807, %rax      # imm = 0x7FFFFFFFFFFFFFFF
	addq	$-4, %rax
	cmpq	%rax, %rsi
	ja	.LBB4_31
# %bb.22:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	movq	%rbx, %rax
	leaq	3(%rsi), %rbx
	movq	(%rax), %rax
	movl	$15, %ecx
	cmpq	16(%rsp), %rax                  # 8-byte Folded Reload
	je	.LBB4_24
# %bb.23:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rcx
.LBB4_24:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	cmpq	%rcx, %rbx
	jbe	.LBB4_26
# %bb.25:
.Ltmp17:
	leaq	.L.str.5(%rip), %rcx
	movl	$3, %r8d
	movq	24(%rsp), %r14                  # 8-byte Reload
	movq	%r14, %rdi
	xorl	%edx, %edx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
.Ltmp18:
	jmp	.LBB4_27
.LBB4_26:
	movb	$46, 2(%rax,%rsi)
	movw	$11822, (%rax,%rsi)             # imm = 0x2E2E
	movq	24(%rsp), %r14                  # 8-byte Reload
.LBB4_27:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
	movq	%rbx, 8(%r14)
	movq	(%r14), %rax
	movb	$0, (%rax,%rbx)
	movq	%r14, %rbx
.LBB4_28:                               # %.critedge
	movq	%rbx, %rax
	addq	$56, %rsp
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
	retq
.LBB4_29:
	.cfi_def_cfa_offset 112
.Ltmp22:
	leaq	.L.str.12(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp23:
# %bb.30:                               # %.noexc39
.LBB4_31:
.Ltmp19:
	leaq	.L.str.13(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp20:
# %bb.32:                               # %.noexc36
.LBB4_33:
.Ltmp21:
	jmp	.LBB4_38
.LBB4_34:
.Ltmp13:
	jmp	.LBB4_38
.LBB4_35:
.Ltmp10:
	jmp	.LBB4_38
.LBB4_36:                               # %.loopexit
.Ltmp16:
	jmp	.LBB4_38
.LBB4_37:                               # %.loopexit.split-lp
.Ltmp24:
.LBB4_38:
	movq	%rax, %r14
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rdi
	cmpq	16(%rsp), %rdi                  # 8-byte Folded Reload
	je	.LBB4_40
# %bb.39:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rsi
	incq	%rsi
	callq	_ZdlPvm@PLT
.LBB4_40:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end4:
	.size	_ZNW12TextRenderer12TextRenderer8clipTextB5cxx11EPKciiRN6Louvre14LPointTemplateIiEE, .Lfunc_end4-_ZNW12TextRenderer12TextRenderer8clipTextB5cxx11EPKciiRN6Louvre14LPointTemplateIiEE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp8-.Lfunc_begin2           # >> Call Site 1 <<
	.uleb128 .Ltmp9-.Ltmp8                  #   Call between .Ltmp8 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin2          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.uleb128 .Ltmp13-.Lfunc_begin2          #     jumps to .Ltmp13
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp15-.Ltmp14                #   Call between .Ltmp14 and .Ltmp15
	.uleb128 .Ltmp16-.Lfunc_begin2          #     jumps to .Ltmp16
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp17-.Ltmp15                #   Call between .Ltmp15 and .Ltmp17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp18-.Ltmp17                #   Call between .Ltmp17 and .Ltmp18
	.uleb128 .Ltmp21-.Lfunc_begin2          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin2          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp20-.Ltmp19                #   Call between .Ltmp19 and .Ltmp20
	.uleb128 .Ltmp21-.Lfunc_begin2          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Lfunc_end4-.Ltmp20            #   Call between .Ltmp20 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.hidden	_ZNW12TextRenderer12TextRenderer20calculateTextureSizeEPKci # -- Begin function _ZNW12TextRenderer12TextRenderer20calculateTextureSizeEPKci
	.globl	_ZNW12TextRenderer12TextRenderer20calculateTextureSizeEPKci
	.p2align	4
	.type	_ZNW12TextRenderer12TextRenderer20calculateTextureSizeEPKci,@function
_ZNW12TextRenderer12TextRenderer20calculateTextureSizeEPKci: # @_ZNW12TextRenderer12TextRenderer20calculateTextureSizeEPKci
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
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	16(%rdi), %rdi
	xorl	%esi, %esi
	callq	FT_Set_Pixel_Sizes@PLT
	testl	%eax, %eax
	je	.LBB5_2
# %bb.1:
	leaq	.L.str.8(%rip), %rdi
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	callq	_ZN6Louvre4LLog5errorEPKcz@PLT
	movq	16(%r14), %rdi
	callq	FT_Done_Face@PLT
	xorl	%r12d, %r12d
	jmp	.LBB5_13
.LBB5_2:
	movq	16(%r14), %rax
	movq	160(%rax), %rax
	movq	48(%rax), %rbx
	subq	56(%rax), %rbx
	movq	%r15, %rsi
	callq	_ZNW12TextRenderer12TextRenderer7toUTF32EPKc
	xorl	%r12d, %r12d
	testq	%rax, %rax
	je	.LBB5_3
# %bb.4:                                # %.preheader
	movq	%rax, %rdi
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.LBB5_12
# %bb.5:                                # %.lr.ph.preheader
	leaq	.L.str.6(%rip), %r13
	leaq	.L.str.9(%rip), %rbp
	movq	%rdi, %r15
	xorl	%r12d, %r12d
	movq	%rdi, (%rsp)                    # 8-byte Spill
.LBB5_6:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_7 Depth 2
	addq	$4, %r15
	jmp	.LBB5_7
	.p2align	4
.LBB5_8:                                # %.backedge
                                        #   in Loop: Header=BB5_7 Depth=2
	xorl	%eax, %eax
	callq	_ZN6Louvre4LLog5errorEPKcz@PLT
	movl	(%r15), %eax
	addq	$4, %r15
	testl	%eax, %eax
	je	.LBB5_9
.LBB5_7:                                #   Parent Loop BB5_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%r14), %rdi
	movslq	%eax, %rsi
	callq	FT_Get_Char_Index@PLT
	movq	%r13, %rdi
	testl	%eax, %eax
	je	.LBB5_8
# %bb.10:                               #   in Loop: Header=BB5_7 Depth=2
	movq	16(%r14), %rdi
	movl	%eax, %esi
	movl	$256, %edx                      # imm = 0x100
	callq	FT_Load_Glyph@PLT
	movq	%rbp, %rdi
	testl	%eax, %eax
	jne	.LBB5_8
# %bb.11:                               # %.outer
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	16(%r14), %rax
	movq	152(%rax), %rax
	movq	80(%rax), %rax
	shrq	$6, %rax
	addl	%eax, %r12d
	movl	(%r15), %eax
	testl	%eax, %eax
	movq	(%rsp), %rdi                    # 8-byte Reload
	jne	.LBB5_6
	jmp	.LBB5_12
.LBB5_9:
	movq	(%rsp), %rdi                    # 8-byte Reload
.LBB5_12:                               # %.outer._crit_edge
	callq	free@PLT
	andq	$-64, %rbx
	shlq	$26, %rbx
	movl	%r12d, %r12d
	jmp	.LBB5_13
.LBB5_3:
	xorl	%ebx, %ebx
.LBB5_13:
	orq	%r12, %rbx
	movq	%rbx, %rax
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
	retq
.Lfunc_end5:
	.size	_ZNW12TextRenderer12TextRenderer20calculateTextureSizeEPKci, .Lfunc_end5-_ZNW12TextRenderer12TextRenderer20calculateTextureSizeEPKci
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNW12TextRenderer12TextRenderer10renderTextEPKciihhh
.LCPI6_0:
	.long	0xc0800000                      # float -4
	.text
	.hidden	_ZNW12TextRenderer12TextRenderer10renderTextEPKciihhh
	.globl	_ZNW12TextRenderer12TextRenderer10renderTextEPKciihhh
	.p2align	4
	.type	_ZNW12TextRenderer12TextRenderer10renderTextEPKciihhh,@function
_ZNW12TextRenderer12TextRenderer10renderTextEPKciihhh: # @_ZNW12TextRenderer12TextRenderer10renderTextEPKciihhh
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
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r9d, %ebp
	movl	%r8d, %r14d
	movl	%ecx, %ebx
	movl	%edx, %r13d
	movq	%rdi, %r12
	movq	%fs:40, %rax
	movq	%rax, 96(%rsp)
	movq	%rsi, (%rsp)                    # 8-byte Spill
	callq	_ZNW12TextRenderer12TextRenderer20calculateTextureSizeEPKci
	movq	%rax, %r15
	shrq	$32, %rax
	movl	%eax, %ecx
	imull	%r15d, %ecx
	testl	%ecx, %ecx
	jle	.LBB6_38
# %bb.1:
	cmpl	$-1, %ebx
	sete	%cl
	cmpl	%r15d, %ebx
	setge	%dl
	orb	%cl, %dl
	jne	.LBB6_5
# %bb.2:
	movq	(%rsp), %rdi                    # 8-byte Reload
	callq	strlen@PLT
	testq	%rax, %rax
	js	.LBB6_6
# %bb.3:
	cvtsi2ss	%rax, %xmm0
	jmp	.LBB6_7
.LBB6_5:
	movq	(%rsp), %rdx                    # 8-byte Reload
	jmp	.LBB6_9
.LBB6_6:
	movq	%rax, %rcx
	shrq	%rcx
	andl	$1, %eax
	orq	%rcx, %rax
	cvtsi2ss	%rax, %xmm0
	addss	%xmm0, %xmm0
.LBB6_7:
	cvtsi2ss	%ebx, %xmm1
	cvtsi2ss	%r15d, %xmm2
	mulss	%xmm0, %xmm1
	divss	%xmm2, %xmm1
	addss	.LCPI6_0(%rip), %xmm1
	cvttss2si	%xmm1, %ebx
	cmpl	$4, %ebx
	jl	.LBB6_38
# %bb.8:                                # %.thread
	leal	4(%rbx), %edi
	callq	_Znam@PLT
	movq	%rax, %r15
	movl	%ebx, %ebx
	movq	%rax, %rdi
	movq	(%rsp), %rsi                    # 8-byte Reload
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movl	$3026478, (%r15,%rbx)           # imm = 0x2E2E2E
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	%r13d, %edx
	callq	_ZNW12TextRenderer12TextRenderer20calculateTextureSizeEPKci
	movq	%r15, %rdx
	movq	%rax, %r15
	shrq	$32, %rax
.LBB6_9:
	movl	%r15d, %ecx
	shrl	$31, %ecx
	addl	%r15d, %ecx
	andl	$-2, %ecx
	movl	%r15d, %r13d
	subl	%ecx, %r13d
	addl	%r15d, %r13d
	movl	%r13d, 88(%rsp)
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	andl	$-2, %ecx
	movl	%eax, %ebx
	subl	%ecx, %ebx
	addl	%eax, %ebx
	movl	%ebx, 92(%rsp)
	movq	%rdx, %r15
	movq	%rdx, %rsi
	callq	_ZNW12TextRenderer12TextRenderer7toUTF32EPKc
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	testq	%rax, %rax
	je	.LBB6_28
# %bb.10:
	movq	%r15, 24(%rsp)                  # 8-byte Spill
	imull	%r13d, %ebx
	testl	%ebx, %ebx
	jle	.LBB6_31
# %bb.11:
	shll	$2, %ebx
	movl	$1, %edi
	movq	%rbx, %rsi
	callq	calloc@PLT
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.LBB6_24
# %bb.12:                               # %.lr.ph.lr.ph
	movzbl	160(%rsp), %ebx
	movslq	%r13d, %rcx
	movq	40(%rsp), %rdx                  # 8-byte Reload
	addq	$3, %rdx
	movq	%rdx, 72(%rsp)                  # 8-byte Spill
	shlq	$2, %rcx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movl	$0, 12(%rsp)                    # 4-byte Folded Spill
	movq	16(%rsp), %r15                  # 8-byte Reload
.LBB6_13:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_15 Depth 2
                                        #     Child Loop BB6_20 Depth 2
                                        #       Child Loop BB6_21 Depth 3
	addq	$4, %r15
	jmp	.LBB6_15
	.p2align	4
.LBB6_14:                               # %.backedge
                                        #   in Loop: Header=BB6_15 Depth=2
	xorl	%eax, %eax
	callq	_ZN6Louvre4LLog5errorEPKcz@PLT
	movl	(%r15), %eax
	addq	$4, %r15
	testl	%eax, %eax
	je	.LBB6_24
.LBB6_15:                               #   Parent Loop BB6_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%r12), %rdi
	movslq	%eax, %rsi
	callq	FT_Get_Char_Index@PLT
	leaq	.L.str.6(%rip), %rdi
	testl	%eax, %eax
	je	.LBB6_14
# %bb.16:                               #   in Loop: Header=BB6_15 Depth=2
	movq	16(%r12), %rdi
	movl	%eax, %esi
	xorl	%edx, %edx
	callq	FT_Load_Glyph@PLT
	leaq	.L.str.7(%rip), %rdi
	testl	%eax, %eax
	jne	.LBB6_14
# %bb.17:                               #   in Loop: Header=BB6_13 Depth=1
	movq	16(%r12), %rax
	movq	152(%rax), %rdi
	movq	160(%rax), %rax
	movq	48(%rdi), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	72(%rdi), %rcx
	movq	80(%rdi), %rdx
	leaq	63(%rdx), %rsi
	testq	%rdx, %rdx
	cmovnsq	%rdx, %rsi
	sarq	$6, %rsi
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
	movq	48(%rax), %rax
	leaq	63(%rax), %rdx
	testq	%rax, %rax
	cmovnsq	%rax, %rdx
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	leaq	63(%rcx), %rax
	testq	%rcx, %rcx
	cmovnsq	%rcx, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	xorl	%esi, %esi
	callq	FT_Render_Glyph@PLT
	movq	16(%r12), %rax
	movq	152(%rax), %rax
	movl	152(%rax), %ecx
	testq	%rcx, %rcx
	movq	80(%rsp), %r11                  # 8-byte Reload
	je	.LBB6_23
# %bb.18:                               # %.preheader.lr.ph
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	64(%rsp), %rdx                  # 8-byte Reload
	leaq	63(%rdx), %rsi
	testq	%rdx, %rdx
	cmovnsq	%rdx, %rsi
	movl	156(%rax), %edx
	testq	%rdx, %rdx
	je	.LBB6_23
# %bb.19:                               # %.preheader.preheader
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	56(%rsp), %r8                   # 8-byte Reload
	sarq	$6, %r8
	movq	48(%rsp), %rdi                  # 8-byte Reload
	sarq	$6, %rdi
	subq	%rdi, %r8
	sarq	$6, %rsi
	movq	32(%rsp), %rdi                  # 8-byte Reload
	subq	%rsi, %rdi
	movq	%rdi, %rsi
	shrq	$63, %rsi
	addq	%rdi, %rsi
	sarq	%rsi
	movl	12(%rsp), %edi                  # 4-byte Reload
	imulq	%r11, %r8
	leaq	(%r8,%rsi,4), %rsi
	leaq	(%rsi,%rdi,4), %rsi
	addq	72(%rsp), %rsi                  # 8-byte Folded Reload
	xorl	%edi, %edi
	.p2align	4
.LBB6_20:                               # %.lr.ph110
                                        #   Parent Loop BB6_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_21 Depth 3
	xorl	%r8d, %r8d
	.p2align	4
.LBB6_21:                               #   Parent Loop BB6_13 Depth=1
                                        #     Parent Loop BB6_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	%r14b, -3(%rsi,%r8,4)
	movb	%bpl, -2(%rsi,%r8,4)
	movb	%bl, -1(%rsi,%r8,4)
	movq	168(%rax), %r9
	movl	156(%rax), %r10d
	imull	%edi, %r10d
	addl	%r8d, %r10d
	movzbl	(%r9,%r10), %r9d
	movb	%r9b, (%rsi,%r8,4)
	incq	%r8
	cmpq	%rdx, %r8
	jb	.LBB6_21
# %bb.22:                               # %._crit_edge111
                                        #   in Loop: Header=BB6_20 Depth=2
	incq	%rdi
	addq	%r11, %rsi
	cmpq	%rcx, %rdi
	jb	.LBB6_20
.LBB6_23:                               # %.outer
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	32(%rsp), %rax                  # 8-byte Reload
	addl	%eax, 12(%rsp)                  # 4-byte Folded Spill
	movl	(%r15), %eax
	testl	%eax, %eax
	jne	.LBB6_13
.LBB6_24:                               # %.outer._crit_edge
	movq	16(%rsp), %rdi                  # 8-byte Reload
	callq	free@PLT
	movl	$104, %edi
	callq	_Znwm@PLT
	movq	%rax, %rbx
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	_ZN6Louvre8LTextureC1Eb@PLT
	shll	$2, %r13d
	leaq	88(%rsp), %rsi
	movq	%rbx, %r14
	movq	%rbx, %rdi
	movl	%r13d, %edx
	movl	$875708993, %ecx                # imm = 0x34324241
	movq	40(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, %r8
	callq	_ZN6Louvre8LTexture21setDataFromMainMemoryERKNS_14LPointTemplateIiEEjjPKv@PLT
	testb	%al, %al
	je	.LBB6_34
# %bb.25:
	movq	%rbx, %rdi
	callq	free@PLT
	movq	24(%rsp), %rdi                  # 8-byte Reload
	cmpq	(%rsp), %rdi                    # 8-byte Folded Reload
	sete	%al
	testq	%rdi, %rdi
	sete	%cl
	orb	%al, %cl
	jne	.LBB6_27
# %bb.26:
	callq	_ZdaPv@PLT
.LBB6_27:
	movq	%r14, %rax
	jmp	.LBB6_39
.LBB6_28:
	cmpq	(%rsp), %r15                    # 8-byte Folded Reload
	sete	%al
	testq	%r15, %r15
	sete	%cl
	orb	%al, %cl
	jne	.LBB6_38
# %bb.37:
	movq	%r15, %rdi
	callq	_ZdaPv@PLT
	jmp	.LBB6_38
.LBB6_31:
	movq	24(%rsp), %rdi                  # 8-byte Reload
	cmpq	(%rsp), %rdi                    # 8-byte Folded Reload
	sete	%al
	testq	%rdi, %rdi
	sete	%cl
	orb	%al, %cl
	jne	.LBB6_33
# %bb.32:
	callq	_ZdaPv@PLT
.LBB6_33:
	movq	16(%rsp), %rdi                  # 8-byte Reload
	callq	free@PLT
	jmp	.LBB6_38
.LBB6_34:
	movq	24(%rsp), %rdi                  # 8-byte Reload
	cmpq	(%rsp), %rdi                    # 8-byte Folded Reload
	sete	%al
	testq	%rdi, %rdi
	sete	%cl
	orb	%al, %cl
	jne	.LBB6_36
# %bb.35:
	callq	_ZdaPv@PLT
.LBB6_36:
	movq	%rbx, %rdi
	callq	free@PLT
	movq	%r14, %rdi
	callq	_ZN6Louvre8LTextureD1Ev@PLT
	movl	$104, %esi
	movq	%r14, %rdi
	callq	_ZdlPvm@PLT
.LBB6_38:
	xorl	%eax, %eax
.LBB6_39:
	movq	%fs:40, %rcx
	cmpq	96(%rsp), %rcx
	jne	.LBB6_41
# %bb.40:                               # %SP_return
	addq	$104, %rsp
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
	retq
.LBB6_41:                               # %CallStackCheckFailBlk
	.cfi_def_cfa_offset 160
	callq	__stack_chk_fail@PLT
.Lfunc_end6:
	.size	_ZNW12TextRenderer12TextRenderer10renderTextEPKciihhh, .Lfunc_end6-_ZNW12TextRenderer12TextRenderer10renderTextEPKciihhh
	.cfi_endproc
                                        # -- End function
	.hidden	_ZNW12TextRenderer12TextRenderer7toUTF32EPKc # -- Begin function _ZNW12TextRenderer12TextRenderer7toUTF32EPKc
	.globl	_ZNW12TextRenderer12TextRenderer7toUTF32EPKc
	.p2align	4
	.type	_ZNW12TextRenderer12TextRenderer7toUTF32EPKc,@function
_ZNW12TextRenderer12TextRenderer7toUTF32EPKc: # @_ZNW12TextRenderer12TextRenderer7toUTF32EPKc
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	testq	%rsi, %rsi
	je	.LBB7_5
# %bb.1:
	cmpb	$0, (%rsi)
	je	.LBB7_5
# %bb.2:
	movl	$0, 20(%rsp)
	movq	%rsi, %rdi
	movq	%rsi, %rbx
	callq	strlen@PLT
	leal	1(%rax), %ebp
	leal	2(,%rax,2), %eax
	cltq
	addq	%rax, %rax
	testl	%ebp, %ebp
	movq	$-1, %rdi
	cmovnsq	%rax, %rdi
	callq	_Znam@PLT
	movq	%rax, %r14
	movl	$0, 16(%rsp)
	leaq	16(%rsp), %rdx
	leaq	20(%rsp), %r9
	movq	%rax, %rdi
	movl	%ebp, %esi
	movq	%rbx, %rcx
	movl	%ebp, %r8d
	callq	u_strFromUTF8_76@PLT
	cmpl	$0, 20(%rsp)
	jle	.LBB7_6
# %bb.3:
	movq	%r14, %rdi
	callq	_ZdaPv@PLT
	movl	20(%rsp), %edi
	callq	u_errorName_76@PLT
	leaq	.L.str.10(%rip), %rdi
	xorl	%ebx, %ebx
	movq	%rax, %rsi
	xorl	%eax, %eax
	callq	_ZN6Louvre4LLog5errorEPKcz@PLT
	movq	%fs:40, %rax
	cmpq	24(%rsp), %rax
	je	.LBB7_8
.LBB7_10:                               # %CallStackCheckFailBlk
	callq	__stack_chk_fail@PLT
.LBB7_5:
	xorl	%ebx, %ebx
	movq	%fs:40, %rax
	cmpq	24(%rsp), %rax
	jne	.LBB7_10
.LBB7_8:                                # %SP_return
	movq	%rbx, %rax
	addq	$32, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB7_6:
	.cfi_def_cfa_offset 80
	movslq	16(%rsp), %r15
	leaq	4(,%r15,4), %rdi
	movq	%r15, %r12
	incq	%r12
	callq	malloc@PLT
	movq	%rax, %rbx
	movl	$0, 12(%rsp)
	leaq	12(%rsp), %rdx
	leaq	20(%rsp), %r9
	movq	%rax, %rdi
	movl	%r12d, %esi
	movq	%r14, %rcx
	movl	%r15d, %r8d
	callq	u_strToUTF32_76@PLT
	cmpl	$0, 20(%rsp)
	jle	.LBB7_9
# %bb.7:
	movq	%r14, %rdi
	callq	_ZdaPv@PLT
	movl	20(%rsp), %edi
	callq	u_errorName_76@PLT
	leaq	.L.str.10(%rip), %rdi
	movq	%rax, %rsi
	xorl	%eax, %eax
	callq	_ZN6Louvre4LLog5errorEPKcz@PLT
	movq	%rbx, %rdi
	callq	free@PLT
	xorl	%ebx, %ebx
	movq	%fs:40, %rax
	cmpq	24(%rsp), %rax
	je	.LBB7_8
	jmp	.LBB7_10
.LBB7_9:
	movslq	12(%rsp), %rax
	movl	$0, -4(%rbx,%rax,4)
	movq	%r14, %rdi
	callq	_ZdaPv@PLT
	movq	%fs:40, %rax
	cmpq	24(%rsp), %rax
	je	.LBB7_8
	jmp	.LBB7_10
.Lfunc_end7:
	.size	_ZNW12TextRenderer12TextRenderer7toUTF32EPKc, .Lfunc_end7-_ZNW12TextRenderer12TextRenderer7toUTF32EPKc
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm,comdat
	.hidden	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm # -- Begin function _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	.p2align	4
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm,@function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm: # @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	.cfi_startproc
# %bb.0:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
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
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	%rdi, %rbx
	movq	(%rdi), %r14
	movq	8(%rdi), %r12
	movq	%r8, %rbp
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	subq	%rdx, %rbp
	addq	%r12, %rbp
	addq	$16, %rdi
	cmpq	%rdi, %r14
	movq	16(%rbx), %rdx
	movl	$15, %eax
	cmovneq	%rdx, %rax
	movabsq	$9223372036854775807, %rcx      # imm = 0x7FFFFFFFFFFFFFFF
	decq	%rcx
	cmpq	%rcx, %rbp
	ja	.LBB8_19
# %bb.1:
	movq	%rsi, %r13
	cmpq	%rax, %rbp
	movq	%r8, 16(%rsp)                   # 8-byte Spill
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	movq	%rdi, 48(%rsp)                  # 8-byte Spill
	jbe	.LBB8_4
# %bb.2:
	addq	%rax, %rax
	cmpq	%rax, %rbp
	jae	.LBB8_4
# %bb.3:
	movabsq	$9223372036854775806, %rbp      # imm = 0x7FFFFFFFFFFFFFFE
	cmpq	%rbp, %rax
	cmovbq	%rax, %rbp
.LBB8_4:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
	leaq	1(%rbp), %rdi
	callq	_Znwm@PLT
	movq	%rax, %r15
	testq	%r13, %r13
	movq	16(%rsp), %rdx                  # 8-byte Reload
	je	.LBB8_8
# %bb.5:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
	cmpq	$1, %r13
	jne	.LBB8_7
# %bb.6:
	movzbl	(%r14), %eax
	movb	%al, (%r15)
	jmp	.LBB8_8
.LBB8_7:
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	memcpy@PLT
	movq	16(%rsp), %rdx                  # 8-byte Reload
.LBB8_8:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
	movq	%r14, 24(%rsp)                  # 8-byte Spill
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%r13), %r14
	cmpq	$0, 8(%rsp)                     # 8-byte Folded Reload
	sete	%al
	testq	%rdx, %rdx
	sete	%cl
	orb	%al, %cl
	je	.LBB8_9
# %bb.12:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
	cmpq	%r14, %r12
	jne	.LBB8_13
.LBB8_16:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
	movq	24(%rsp), %rdi                  # 8-byte Reload
	cmpq	48(%rsp), %rdi                  # 8-byte Folded Reload
	je	.LBB8_18
.LBB8_17:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
	movq	40(%rsp), %rsi                  # 8-byte Reload
	incq	%rsi
	callq	_ZdlPvm@PLT
.LBB8_18:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit
	movq	%r15, (%rbx)
	movq	%rbp, 16(%rbx)
	addq	$56, %rsp
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
	retq
.LBB8_9:
	.cfi_def_cfa_offset 112
	leaq	(%r15,%r13), %rdi
	cmpq	$1, %rdx
	jne	.LBB8_11
# %bb.10:
	movq	8(%rsp), %rax                   # 8-byte Reload
	movzbl	(%rax), %eax
	movb	%al, (%rdi)
	cmpq	%r14, %r12
	je	.LBB8_16
	jmp	.LBB8_13
.LBB8_11:
	movq	8(%rsp), %rsi                   # 8-byte Reload
	callq	memcpy@PLT
	movq	16(%rsp), %rdx                  # 8-byte Reload
	cmpq	%r14, %r12
	je	.LBB8_16
.LBB8_13:
	subq	%r14, %r12
	movq	%r15, %rdi
	addq	%r13, %rdi
	addq	%rdx, %rdi
	addq	24(%rsp), %r13                  # 8-byte Folded Reload
	addq	32(%rsp), %r13                  # 8-byte Folded Reload
	cmpq	$1, %r12
	jne	.LBB8_15
# %bb.14:
	movzbl	(%r13), %eax
	movb	%al, (%rdi)
	movq	24(%rsp), %rdi                  # 8-byte Reload
	cmpq	48(%rsp), %rdi                  # 8-byte Folded Reload
	jne	.LBB8_17
	jmp	.LBB8_18
.LBB8_15:
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	memcpy@PLT
	movq	24(%rsp), %rdi                  # 8-byte Reload
	cmpq	48(%rsp), %rdi                  # 8-byte Folded Reload
	jne	.LBB8_17
	jmp	.LBB8_18
.LBB8_19:
	leaq	.L.str.12(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Lfunc_end8:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm, .Lfunc_end8-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm,comdat
	.hidden	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm # -- Begin function _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
	.p2align	4
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm,@function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm: # @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
	.cfi_startproc
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
	movq	%rdi, %rbx
	movq	8(%rdi), %rax
	movq	%rax, %rdi
	notq	%rdi
	movabsq	$9223372036854775807, %r9       # imm = 0x7FFFFFFFFFFFFFFF
	addq	%rdx, %r9
	addq	%rdi, %r9
	cmpq	%r8, %r9
	jb	.LBB9_16
# %bb.1:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
	movq	%r8, %r15
	subq	%rdx, %r15
	addq	%rax, %r15
	movq	(%rbx), %rdi
	leaq	16(%rbx), %r10
	movl	$15, %r9d
	cmpq	%r10, %rdi
	je	.LBB9_3
# %bb.2:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
	movq	16(%rbx), %r9
.LBB9_3:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
	cmpq	%r9, %r15
	jbe	.LBB9_4
# %bb.14:
	movq	%rbx, %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	jmp	.LBB9_15
.LBB9_4:
	leaq	(%rdi,%rsi), %r14
	addq	%rdx, %rsi
	movq	%rax, %r9
	subq	%rsi, %r9
	cmpq	%rdi, %rcx
	setb	%r10b
	addq	%rax, %rdi
	cmpq	%rcx, %rdi
	setb	%dil
	orb	%r10b, %dil
	cmpb	$1, %dil
	jne	.LBB9_13
# %bb.5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_disjunctEPKc.exit.thread
	cmpq	%rsi, %rax
	sete	%al
	cmpq	%rdx, %r8
	sete	%sil
	orb	%al, %sil
	jne	.LBB9_9
# %bb.6:
	leaq	(%r14,%r8), %rdi
	addq	%r14, %rdx
	cmpq	$1, %r9
	jne	.LBB9_8
# %bb.7:
	movzbl	(%rdx), %eax
	movb	%al, (%rdi)
.LBB9_9:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
	testq	%r8, %r8
	je	.LBB9_15
.LBB9_10:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
	cmpq	$1, %r8
	jne	.LBB9_12
# %bb.11:
	movzbl	(%rcx), %eax
	movb	%al, (%r14)
	jmp	.LBB9_15
.LBB9_12:
	movq	%r14, %rdi
	movq	%rcx, %rsi
	movq	%r8, %rdx
	callq	memcpy@PLT
	jmp	.LBB9_15
.LBB9_8:
	movq	%rdx, %rsi
	movq	%r9, %rdx
	movq	%r8, %r12
	movq	%rcx, %r13
	callq	memmove@PLT
	movq	%r13, %rcx
	movq	%r12, %r8
	testq	%r8, %r8
	jne	.LBB9_10
.LBB9_15:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
	movq	%r15, 8(%rbx)
	movq	(%rbx), %rax
	movb	$0, (%rax,%r15)
	movq	%rbx, %rax
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
.LBB9_13:
	.cfi_def_cfa_offset 48
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm@PLT
	jmp	.LBB9_15
.LBB9_16:
	leaq	.L.str.14(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Lfunc_end9:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, .Lfunc_end9-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.globl	_ZGIW12TextRenderer             # -- Begin function _ZGIW12TextRenderer
	.p2align	4
	.type	_ZGIW12TextRenderer,@function
_ZGIW12TextRenderer:                    # @_ZGIW12TextRenderer
# %bb.0:
	retq
.Lfunc_end10:
	.size	_ZGIW12TextRenderer, .Lfunc_end10-_ZGIW12TextRenderer
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"file"
	.size	.L.str, 5

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Font %s or similar found: %s"
	.size	.L.str.1, 29

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Failed to init FT_Library."
	.size	.L.str.2, 27

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Failed to init FT_New_Face."
	.size	.L.str.3, 28

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"..."
	.size	.L.str.5, 4

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Failed to get FT_Face char index."
	.size	.L.str.6, 34

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Failed to load FT_Face default."
	.size	.L.str.7, 32

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Failed to set FT_Face size."
	.size	.L.str.8, 28

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Failed to load FT_Face advance."
	.size	.L.str.9, 32

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Error converting UTF-8 to UTF-32: %s\n"
	.size	.L.str.10, 38

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"basic_string::_M_create"
	.size	.L.str.12, 24

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"basic_string::append"
	.size	.L.str.13, 21

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"basic_string::_M_replace"
	.size	.L.str.14, 25

	.section	".linker-options","e",@llvm_linker_options
	.globl	_ZNW12TextRenderer12TextRendererC1EPKc
	.type	_ZNW12TextRenderer12TextRendererC1EPKc,@function
	.hidden	_ZNW12TextRenderer12TextRendererC1EPKc
.set _ZNW12TextRenderer12TextRendererC1EPKc, _ZNW12TextRenderer12TextRendererC2EPKc
	.globl	_ZNW12TextRenderer12TextRendererD1Ev
	.type	_ZNW12TextRenderer12TextRendererD1Ev,@function
	.hidden	_ZNW12TextRenderer12TextRendererD1Ev
.set _ZNW12TextRenderer12TextRendererD1Ev, _ZNW12TextRenderer12TextRendererD2Ev
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
	.addrsig_sym __stack_chk_fail
	.addrsig_sym _Unwind_Resume
