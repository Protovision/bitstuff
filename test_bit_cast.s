	.file	"test_bit_cast.cpp"
	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.text
	.globl	_Z19do_fastest_bit_castv
	.type	_Z19do_fastest_bit_castv, @function
_Z19do_fastest_bit_castv:
.LFB1516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
#APP
# 8 "test_bit_cast.cpp" 1
	# BEGIN FASTEST BIT CAST
# 0 "" 2
#NO_APP
	leaq	_ZSt3cin(%rip), %rax
	movq	%rax, -8(%rbp)
#APP
# 10 "test_bit_cast.cpp" 1
	# END FASTEST BIT CAST
# 0 "" 2
#NO_APP
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1516:
	.size	_Z19do_fastest_bit_castv, .-_Z19do_fastest_bit_castv
	.globl	_Z16do_fast_bit_castv
	.type	_Z16do_fast_bit_castv, @function
_Z16do_fast_bit_castv:
.LFB1517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
#APP
# 15 "test_bit_cast.cpp" 1
	# BEGIN FAST BIT CAST
# 0 "" 2
#NO_APP
	movl	$1042284544, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
#APP
# 17 "test_bit_cast.cpp" 1
	# END FAST BIT CAST
# 0 "" 2
#NO_APP
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1517:
	.size	_Z16do_fast_bit_castv, .-_Z16do_fast_bit_castv
	.globl	_Z11do_bit_castv
	.type	_Z11do_bit_castv, @function
_Z11do_bit_castv:
.LFB1518:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$3088, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
#APP
# 25 "test_bit_cast.cpp" 1
	# BEGIN BIT CAST
# 0 "" 2
#NO_APP
	leaq	-1040(%rbp), %rax
	leaq	-3088(%rbp), %rdx
	movl	$128, %ecx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	rep movsq
	leaq	-1040(%rbp), %rdx
	leaq	-2064(%rbp), %rax
	movq	%rdx, %rsi
	movl	$128, %edx
	movq	%rax, %rdi
	movq	%rdx, %rcx
	rep movsq
#APP
# 27 "test_bit_cast.cpp" 1
	# END BIT CAST
# 0 "" 2
#NO_APP
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1518:
	.size	_Z11do_bit_castv, .-_Z11do_bit_castv
	.globl	main
	.type	main, @function
main:
.LFB1519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	_Z19do_fastest_bit_castv
	call	_Z16do_fast_bit_castv
	call	_Z11do_bit_castv
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1519:
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2004:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L13
	cmpl	$65535, -8(%rbp)
	jne	.L13
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L13:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2004:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z19do_fastest_bit_castv, @function
_GLOBAL__sub_I__Z19do_fastest_bit_castv:
.LFB2005:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2005:
	.size	_GLOBAL__sub_I__Z19do_fastest_bit_castv, .-_GLOBAL__sub_I__Z19do_fastest_bit_castv
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z19do_fastest_bit_castv
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
