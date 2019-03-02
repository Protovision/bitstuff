	.file	"test.cpp"
	.text
	.section	.text._ZN6swoope29strict_alias_constexpr_memcpyEPvPKvm,"axG",@progbits,_ZN6swoope29strict_alias_constexpr_memcpyEPvPKvm,comdat
	.weak	_ZN6swoope29strict_alias_constexpr_memcpyEPvPKvm
	.type	_ZN6swoope29strict_alias_constexpr_memcpyEPvPKvm, @function
_ZN6swoope29strict_alias_constexpr_memcpyEPvPKvm:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.L3:
	cmpq	$0, -40(%rbp)
	je	.L2
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	subq	$1, -40(%rbp)
	jmp	.L3
.L2:
	movq	-24(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	_ZN6swoope29strict_alias_constexpr_memcpyEPvPKvm, .-_ZN6swoope29strict_alias_constexpr_memcpyEPvPKvm
	.section	.text._ZN6swoope16constexpr_memcpyEPvPKvm,"axG",@progbits,_ZN6swoope16constexpr_memcpyEPvPKvm,comdat
	.weak	_ZN6swoope16constexpr_memcpyEPvPKvm
	.type	_ZN6swoope16constexpr_memcpyEPvPKvm, @function
_ZN6swoope16constexpr_memcpyEPvPKvm:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	$8, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-56(%rbp), %rax
	andq	%rdx, %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L7
	movq	-96(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$8, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	andq	%rdx, %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L7
	movl	$1, %eax
	jmp	.L9
.L7:
	movl	$0, %eax
.L9:
	testb	%al, %al
	je	.L10
	movq	-88(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$8, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	notq	%rax
	andq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	cmpq	%rax, -104(%rbp)
	jnb	.L16
.L14:
	movq	-80(%rbp), %rax
	cmpq	-64(%rbp), %rax
	je	.L13
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -80(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	subq	$1, -104(%rbp)
	jmp	.L14
.L13:
	cmpq	$8, -104(%rbp)
	jbe	.L16
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	addq	$8, -80(%rbp)
	addq	$8, -72(%rbp)
	subq	$8, -104(%rbp)
	jmp	.L13
.L16:
	cmpq	$0, -104(%rbp)
	je	.L15
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -80(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	subq	$1, -104(%rbp)
	jmp	.L16
.L15:
	movq	-88(%rbp), %rax
	jmp	.L17
.L10:
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN6swoope29strict_alias_constexpr_memcpyEPvPKvm
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	_ZN6swoope16constexpr_memcpyEPvPKvm, .-_ZN6swoope16constexpr_memcpyEPvPKvm
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
# 9 "test.cpp" 1
	# BEGIN FASTEST BIT CAST
# 0 "" 2
#NO_APP
	leaq	_ZSt3cin(%rip), %rax
	movq	%rax, -8(%rbp)
#APP
# 11 "test.cpp" 1
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
#APP
# 16 "test.cpp" 1
	# BEGIN FAST BIT CAST
# 0 "" 2
#NO_APP
	movl	$1042284544, %edi
	call	_ZN6swoope8bit_castIfjEENSt9enable_ifIXaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valuesrNS_24is_within_sizeof_pointerIS3_EE5valuesrNS_23is_sizeof_greater_equalIS3_S4_EE5valueES4_E4typeES3_
#APP
# 18 "test.cpp" 1
	# END FAST BIT CAST
# 0 "" 2
#NO_APP
	nop
	popq	%rbp
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
	subq	$2064, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
#APP
# 26 "test.cpp" 1
	# BEGIN BIT CAST
# 0 "" 2
#NO_APP
	leaq	-1040(%rbp), %rax
	leaq	-2064(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN6swoope8bit_castIZ11do_bit_castvE1UZ11do_bit_castvE1TEENSt9enable_ifIXaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valuentsrNS_24is_within_sizeof_pointerIS5_EE5valuesrNS_23is_sizeof_greater_equalIS5_S6_EE5valueES6_E4typeERKS5_
#APP
# 28 "test.cpp" 1
	# END BIT CAST
# 0 "" 2
#NO_APP
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L22
	call	__stack_chk_fail@PLT
.L22:
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
	.section	.text._ZN6swoope8bit_castIfjEENSt9enable_ifIXaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valuesrNS_24is_within_sizeof_pointerIS3_EE5valuesrNS_23is_sizeof_greater_equalIS3_S4_EE5valueES4_E4typeES3_,"axG",@progbits,_ZN6swoope8bit_castIfjEENSt9enable_ifIXaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valuesrNS_24is_within_sizeof_pointerIS3_EE5valuesrNS_23is_sizeof_greater_equalIS3_S4_EE5valueES4_E4typeES3_,comdat
	.weak	_ZN6swoope8bit_castIfjEENSt9enable_ifIXaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valuesrNS_24is_within_sizeof_pointerIS3_EE5valuesrNS_23is_sizeof_greater_equalIS3_S4_EE5valueES4_E4typeES3_
	.type	_ZN6swoope8bit_castIfjEENSt9enable_ifIXaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valuesrNS_24is_within_sizeof_pointerIS3_EE5valuesrNS_23is_sizeof_greater_equalIS3_S4_EE5valueES4_E4typeES3_, @function
_ZN6swoope8bit_castIfjEENSt9enable_ifIXaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valuesrNS_24is_within_sizeof_pointerIS3_EE5valuesrNS_23is_sizeof_greater_equalIS3_S4_EE5valueES4_E4typeES3_:
.LFB1758:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -12(%rbp)
	leaq	-20(%rbp), %rcx
	leaq	-12(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN6swoope16constexpr_memcpyEPvPKvm
	leaq	-12(%rbp), %rax
	movss	(%rax), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L27
	call	__stack_chk_fail@PLT
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1758:
	.size	_ZN6swoope8bit_castIfjEENSt9enable_ifIXaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valuesrNS_24is_within_sizeof_pointerIS3_EE5valuesrNS_23is_sizeof_greater_equalIS3_S4_EE5valueES4_E4typeES3_, .-_ZN6swoope8bit_castIfjEENSt9enable_ifIXaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valuesrNS_24is_within_sizeof_pointerIS3_EE5valuesrNS_23is_sizeof_greater_equalIS3_S4_EE5valueES4_E4typeES3_
	.text
	.type	_ZN6swoope8bit_castIZ11do_bit_castvE1UZ11do_bit_castvE1TEENSt9enable_ifIXaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valuentsrNS_24is_within_sizeof_pointerIS5_EE5valuesrNS_23is_sizeof_greater_equalIS5_S6_EE5valueES6_E4typeERKS5_, @function
_ZN6swoope8bit_castIZ11do_bit_castvE1UZ11do_bit_castvE1TEENSt9enable_ifIXaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valuentsrNS_24is_within_sizeof_pointerIS5_EE5valuesrNS_23is_sizeof_greater_equalIS5_S6_EE5valueES6_E4typeERKS5_:
.LFB1759:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1056, %rsp
	movq	%rdi, -1048(%rbp)
	movq	%rsi, -1056(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-1040(%rbp), %rdx
	movl	$0, %eax
	movl	$128, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	-1056(%rbp), %rcx
	leaq	-1040(%rbp), %rax
	movl	$1024, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN6swoope16constexpr_memcpyEPvPKvm
	leaq	-1040(%rbp), %rdx
	movq	-1048(%rbp), %rax
	movl	$1024, %ecx
	movq	(%rdx), %rsi
	movq	%rsi, (%rax)
	movl	%ecx, %esi
	addq	%rax, %rsi
	leaq	8(%rsi), %rdi
	movl	%ecx, %esi
	addq	%rdx, %rsi
	addq	$8, %rsi
	movq	-16(%rsi), %rsi
	movq	%rsi, -16(%rdi)
	leaq	8(%rax), %rdi
	andq	$-8, %rdi
	subq	%rdi, %rax
	subq	%rax, %rdx
	addl	%eax, %ecx
	andl	$-8, %ecx
	movl	%ecx, %eax
	shrl	$3, %eax
	movl	%eax, %eax
	movq	%rdx, %rsi
	movq	%rax, %rcx
	rep movsq
	movq	-1048(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L30
	call	__stack_chk_fail@PLT
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1759:
	.size	_ZN6swoope8bit_castIZ11do_bit_castvE1UZ11do_bit_castvE1TEENSt9enable_ifIXaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valuentsrNS_24is_within_sizeof_pointerIS5_EE5valuesrNS_23is_sizeof_greater_equalIS5_S6_EE5valueES6_E4typeERKS5_, .-_ZN6swoope8bit_castIZ11do_bit_castvE1UZ11do_bit_castvE1TEENSt9enable_ifIXaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valuentsrNS_24is_within_sizeof_pointerIS5_EE5valuesrNS_23is_sizeof_greater_equalIS5_S6_EE5valueES6_E4typeERKS5_
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
	jne	.L33
	cmpl	$65535, -8(%rbp)
	jne	.L33
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L33:
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
