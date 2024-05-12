	.file	"test.cpp"
	.text
	.section	.text._ZSt23__is_constant_evaluatedv,"axG",@progbits,_ZSt23__is_constant_evaluatedv,comdat
	.weak	_ZSt23__is_constant_evaluatedv
	.type	_ZSt23__is_constant_evaluatedv, @function
_ZSt23__is_constant_evaluatedv:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_ZSt23__is_constant_evaluatedv, .-_ZSt23__is_constant_evaluatedv
	.section	.text._ZNSt11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
	.weak	_ZNSt11char_traitsIcE6lengthEPKc
	.type	_ZNSt11char_traitsIcE6lengthEPKc, @function
_ZNSt11char_traitsIcE6lengthEPKc:
.LFB42:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	_ZSt23__is_constant_evaluatedv
	testb	%al, %al
	je	.L4
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	jmp	.L5
.L4:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	nop
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	_ZNSt11char_traitsIcE6lengthEPKc, .-_ZNSt11char_traitsIcE6lengthEPKc
	.section	.text._ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,comdat
	.align 2
	.weak	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.type	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, @function
_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc:
.LFB3005:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -16(%rbp)
	jmp	.L7
.L8:
	addq	$1, -16(%rbp)
.L7:
	movb	$0, -17(%rbp)
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	leaq	-17(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	xorl	$1, %eax
	testb	%al, %al
	jne	.L8
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3005:
	.size	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, .-_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.section	.text._ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,comdat
	.weak	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.type	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, @function
_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_:
.LFB3006:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	sete	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3006:
	.size	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, .-_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"/user"
.LC1:
	.string	"yes"
.LC2:
	.string	"{}\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB3001:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3001
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$160, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm0, -112(%rbp)
	movb	$47, -128(%rbp)
	movq	$4, -120(%rbp)
	leaq	1+.LC0(%rip), %rax
	movq	%rax, -112(%rbp)
	movb	$1, -104(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -192(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
.LEHB0:
	call	_ZNSt11char_traitsIcE6lengthEPKc
	movq	%rax, -184(%rbp)
	nop
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movq	stdout(%rip), %r14
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	call	_ZN3fmt3v1016make_format_argsINS0_20basic_format_contextINS0_8appenderEcEEJEEENS0_16format_arg_storeIT_JDpNSt9remove_cvINSt16remove_referenceIT0_E4typeEE4typeEEEEDpRS9_
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movl	$0, %eax
	leaq	-96(%rbp), %rcx
	movq	%rcx, %rdx
	movq	-144(%rbp), %rcx
	movq	-136(%rbp), %rbx
	leaq	-80(%rbp), %rdi
	movq	%rax, %r8
	movq	%rdx, %r9
	movq	%r8, %rsi
	movq	%rdx, %r8
	movq	%rcx, %rax
	movq	%rbx, %rdx
	movq	%rax, %rdx
	movq	%rbx, %rax
	movq	%rsi, %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdx
	call	_ZN3fmt3v107vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE@PLT
.LEHE0:
	leaq	.LC2(%rip), %r12
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
.LEHB1:
	call	_ZNSt11char_traitsIcE6lengthEPKc
	movq	%rax, %r13
	movq	%r12, -144(%rbp)
	movq	%r13, -136(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN3fmt3v1016make_format_argsINS0_20basic_format_contextINS0_8appenderEcEEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS0_16format_arg_storeIT_JDpNSt9remove_cvINSt16remove_referenceIT0_E4typeEE4typeEEEEDpRSF_
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movl	$13, %eax
	leaq	-96(%rbp), %rcx
	movq	%rcx, %rdx
	movq	-144(%rbp), %rcx
	movq	-136(%rbp), %rbx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%rdx, %rdi
	movq	%rcx, %rax
	movq	%rbx, %rdx
	movq	%rax, %rdx
	movq	%rbx, %rax
	movq	%rsi, %rcx
	movq	%rdi, %r8
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	%r14, %rdi
	call	_ZN3fmt3v106vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE@PLT
.LEHE1:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	nop
	movl	$0, %eax
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L18
	jmp	.L20
.L19:
	movq	%rax, %r14
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%r14, %rax
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L16
	call	__stack_chk_fail@PLT
.L16:
	movq	%rax, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L20:
	call	__stack_chk_fail@PLT
.L18:
	addq	$160, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3001:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA3001:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3001-.LLSDACSB3001
.LLSDACSB3001:
	.uleb128 .LEHB0-.LFB3001
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB3001
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L19-.LFB3001
	.uleb128 0
	.uleb128 .LEHB2-.LFB3001
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE3001:
	.text
	.size	main, .-main
	.section	.text._ZN3fmt3v1016make_format_argsINS0_20basic_format_contextINS0_8appenderEcEEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS0_16format_arg_storeIT_JDpNSt9remove_cvINSt16remove_referenceIT0_E4typeEE4typeEEEEDpRSF_,"axG",@progbits,_ZN3fmt3v1016make_format_argsINS0_20basic_format_contextINS0_8appenderEcEEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS0_16format_arg_storeIT_JDpNSt9remove_cvINSt16remove_referenceIT0_E4typeEE4typeEEEEDpRSF_,comdat
	.weak	_ZN3fmt3v1016make_format_argsINS0_20basic_format_contextINS0_8appenderEcEEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS0_16format_arg_storeIT_JDpNSt9remove_cvINSt16remove_referenceIT0_E4typeEE4typeEEEEDpRSF_
	.type	_ZN3fmt3v1016make_format_argsINS0_20basic_format_contextINS0_8appenderEcEEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS0_16format_arg_storeIT_JDpNSt9remove_cvINSt16remove_referenceIT0_E4typeEE4typeEEEEDpRSF_, @function
_ZN3fmt3v1016make_format_argsINS0_20basic_format_contextINS0_8appenderEcEEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS0_16format_arg_storeIT_JDpNSt9remove_cvINSt16remove_referenceIT0_E4typeEE4typeEEEEDpRSF_:
.LFB3504:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$40, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	call	_ZN3fmt3v106detail14to_string_viewIcSt11char_traitsIcESaIcEEENS0_17basic_string_viewIT_EERKNSt7__cxx1112basic_stringIS7_T0_T1_EE
	movq	%rax, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rsp, %r12
	movq	%r12, %rdi
	call	_ZNK3fmt3v1017basic_string_viewIcE4dataEv
	movq	%rax, %rbx
	movq	%r12, %rdi
	call	_ZNK3fmt3v1017basic_string_viewIcE4sizeEv
	movq	%rax, %rdx
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L24
	movq	%rbx, %rax
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L24:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3504:
	.size	_ZN3fmt3v1016make_format_argsINS0_20basic_format_contextINS0_8appenderEcEEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS0_16format_arg_storeIT_JDpNSt9remove_cvINSt16remove_referenceIT0_E4typeEE4typeEEEEDpRSF_, .-_ZN3fmt3v1016make_format_argsINS0_20basic_format_contextINS0_8appenderEcEEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS0_16format_arg_storeIT_JDpNSt9remove_cvINSt16remove_referenceIT0_E4typeEE4typeEEEEDpRSF_
	.section	.text._ZN3fmt3v1016make_format_argsINS0_20basic_format_contextINS0_8appenderEcEEJEEENS0_16format_arg_storeIT_JDpNSt9remove_cvINSt16remove_referenceIT0_E4typeEE4typeEEEEDpRS9_,"axG",@progbits,_ZN3fmt3v1016make_format_argsINS0_20basic_format_contextINS0_8appenderEcEEJEEENS0_16format_arg_storeIT_JDpNSt9remove_cvINSt16remove_referenceIT0_E4typeEE4typeEEEEDpRS9_,comdat
	.weak	_ZN3fmt3v1016make_format_argsINS0_20basic_format_contextINS0_8appenderEcEEJEEENS0_16format_arg_storeIT_JDpNSt9remove_cvINSt16remove_referenceIT0_E4typeEE4typeEEEEDpRS9_
	.type	_ZN3fmt3v1016make_format_argsINS0_20basic_format_contextINS0_8appenderEcEEJEEENS0_16format_arg_storeIT_JDpNSt9remove_cvINSt16remove_referenceIT0_E4typeEE4typeEEEEDpRS9_, @function
_ZN3fmt3v1016make_format_argsINS0_20basic_format_contextINS0_8appenderEcEEJEEENS0_16format_arg_storeIT_JDpNSt9remove_cvINSt16remove_referenceIT0_E4typeEE4typeEEEEDpRS9_:
.LFB3557:
	.cfi_startproc
	movl	$0, %eax
	movl	$0, %edx
	ret
	.cfi_endproc
.LFE3557:
	.size	_ZN3fmt3v1016make_format_argsINS0_20basic_format_contextINS0_8appenderEcEEJEEENS0_16format_arg_storeIT_JDpNSt9remove_cvINSt16remove_referenceIT0_E4typeEE4typeEEEEDpRS9_, .-_ZN3fmt3v1016make_format_argsINS0_20basic_format_contextINS0_8appenderEcEEJEEENS0_16format_arg_storeIT_JDpNSt9remove_cvINSt16remove_referenceIT0_E4typeEE4typeEEEEDpRS9_
	.section	.text._ZN3fmt3v106detail14to_string_viewIcSt11char_traitsIcESaIcEEENS0_17basic_string_viewIT_EERKNSt7__cxx1112basic_stringIS7_T0_T1_EE,"axG",@progbits,_ZN3fmt3v106detail14to_string_viewIcSt11char_traitsIcESaIcEEENS0_17basic_string_viewIT_EERKNSt7__cxx1112basic_stringIS7_T0_T1_EE,comdat
	.weak	_ZN3fmt3v106detail14to_string_viewIcSt11char_traitsIcESaIcEEENS0_17basic_string_viewIT_EERKNSt7__cxx1112basic_stringIS7_T0_T1_EE
	.type	_ZN3fmt3v106detail14to_string_viewIcSt11char_traitsIcESaIcEEENS0_17basic_string_viewIT_EERKNSt7__cxx1112basic_stringIS7_T0_T1_EE, @function
_ZN3fmt3v106detail14to_string_viewIcSt11char_traitsIcESaIcEEENS0_17basic_string_viewIT_EERKNSt7__cxx1112basic_stringIS7_T0_T1_EE:
.LFB3631:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, %rsi
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %rdi
	call	_ZN3fmt3v1017basic_string_viewIcEC1ISt11char_traitsIcESaIcEEERKNSt7__cxx1112basic_stringIcT_T0_EE
	movq	(%rsp), %rax
	movq	8(%rsp), %rdx
	movq	24(%rsp), %rcx
	subq	%fs:40, %rcx
	jne	.L29
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L29:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3631:
	.size	_ZN3fmt3v106detail14to_string_viewIcSt11char_traitsIcESaIcEEENS0_17basic_string_viewIT_EERKNSt7__cxx1112basic_stringIS7_T0_T1_EE, .-_ZN3fmt3v106detail14to_string_viewIcSt11char_traitsIcESaIcEEENS0_17basic_string_viewIT_EERKNSt7__cxx1112basic_stringIS7_T0_T1_EE
	.section	.text._ZNK3fmt3v1017basic_string_viewIcE4dataEv,"axG",@progbits,_ZNK3fmt3v1017basic_string_viewIcE4dataEv,comdat
	.align 2
	.weak	_ZNK3fmt3v1017basic_string_viewIcE4dataEv
	.type	_ZNK3fmt3v1017basic_string_viewIcE4dataEv, @function
_ZNK3fmt3v1017basic_string_viewIcE4dataEv:
.LFB3632:
	.cfi_startproc
	movq	(%rdi), %rax
	ret
	.cfi_endproc
.LFE3632:
	.size	_ZNK3fmt3v1017basic_string_viewIcE4dataEv, .-_ZNK3fmt3v1017basic_string_viewIcE4dataEv
	.section	.text._ZNK3fmt3v1017basic_string_viewIcE4sizeEv,"axG",@progbits,_ZNK3fmt3v1017basic_string_viewIcE4sizeEv,comdat
	.align 2
	.weak	_ZNK3fmt3v1017basic_string_viewIcE4sizeEv
	.type	_ZNK3fmt3v1017basic_string_viewIcE4sizeEv, @function
_ZNK3fmt3v1017basic_string_viewIcE4sizeEv:
.LFB3633:
	.cfi_startproc
	movq	8(%rdi), %rax
	ret
	.cfi_endproc
.LFE3633:
	.size	_ZNK3fmt3v1017basic_string_viewIcE4sizeEv, .-_ZNK3fmt3v1017basic_string_viewIcE4sizeEv
	.section	.text._ZN3fmt3v1017basic_string_viewIcEC2ISt11char_traitsIcESaIcEEERKNSt7__cxx1112basic_stringIcT_T0_EE,"axG",@progbits,_ZN3fmt3v1017basic_string_viewIcEC5ISt11char_traitsIcESaIcEEERKNSt7__cxx1112basic_stringIcT_T0_EE,comdat
	.align 2
	.weak	_ZN3fmt3v1017basic_string_viewIcEC2ISt11char_traitsIcESaIcEEERKNSt7__cxx1112basic_stringIcT_T0_EE
	.type	_ZN3fmt3v1017basic_string_viewIcEC2ISt11char_traitsIcESaIcEEERKNSt7__cxx1112basic_stringIcT_T0_EE, @function
_ZN3fmt3v1017basic_string_viewIcEC2ISt11char_traitsIcESaIcEEERKNSt7__cxx1112basic_stringIcT_T0_EE:
.LFB3635:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, %rbx
	movq	%rsi, %r12
	movq	%rsi, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv@PLT
	movq	%rax, (%rbx)
	movq	%r12, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv@PLT
	movq	%rax, 8(%rbx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3635:
	.size	_ZN3fmt3v1017basic_string_viewIcEC2ISt11char_traitsIcESaIcEEERKNSt7__cxx1112basic_stringIcT_T0_EE, .-_ZN3fmt3v1017basic_string_viewIcEC2ISt11char_traitsIcESaIcEEERKNSt7__cxx1112basic_stringIcT_T0_EE
	.weak	_ZN3fmt3v1017basic_string_viewIcEC1ISt11char_traitsIcESaIcEEERKNSt7__cxx1112basic_stringIcT_T0_EE
	.set	_ZN3fmt3v1017basic_string_viewIcEC1ISt11char_traitsIcESaIcEEERKNSt7__cxx1112basic_stringIcT_T0_EE,_ZN3fmt3v1017basic_string_viewIcEC2ISt11char_traitsIcESaIcEEERKNSt7__cxx1112basic_stringIcT_T0_EE
	.section	.rodata
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedImEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE:
	.byte	1
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (GNU) 13.2.1 20240417"
	.section	.note.GNU-stack,"",@progbits
