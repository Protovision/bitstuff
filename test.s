	.file	"test.cpp"
	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.text
	.globl	main
	.type	main, @function
main:
.LFB1551:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$_ZSt4cout, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8bitstuff9byte_castImPSoEENSt9enable_ifIXsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueES5_E4typeERKS4_
	movq	%rax, %rsi
	movl	$_ZSt4cout, %edi
	call	_ZNSolsEm
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -8(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8bitstuff9byte_castImdEENSt9enable_ifIXaaaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueeqstS4_stS3_srSt10is_trivialIS4_E5valuesrSt21is_trivially_copyableIS3_E5valueES4_E4typeERKS3_
	movq	%rax, %rsi
	movl	$_ZSt4cout, %edi
	call	_ZNSolsEm
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1551:
	.size	main, .-main
	.section	.text._ZN8bitstuff9byte_castImPSoEENSt9enable_ifIXsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueES5_E4typeERKS4_,"axG",@progbits,_ZN8bitstuff9byte_castImPSoEENSt9enable_ifIXsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueES5_E4typeERKS4_,comdat
	.weak	_ZN8bitstuff9byte_castImPSoEENSt9enable_ifIXsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueES5_E4typeERKS4_
	.type	_ZN8bitstuff9byte_castImPSoEENSt9enable_ifIXsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueES5_E4typeERKS4_, @function
_ZN8bitstuff9byte_castImPSoEENSt9enable_ifIXsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueES5_E4typeERKS4_:
.LFB1788:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1788:
	.size	_ZN8bitstuff9byte_castImPSoEENSt9enable_ifIXsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueES5_E4typeERKS4_, .-_ZN8bitstuff9byte_castImPSoEENSt9enable_ifIXsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueES5_E4typeERKS4_
	.section	.text._ZN8bitstuff9byte_castImdEENSt9enable_ifIXaaaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueeqstS4_stS3_srSt10is_trivialIS4_E5valuesrSt21is_trivially_copyableIS3_E5valueES4_E4typeERKS3_,"axG",@progbits,_ZN8bitstuff9byte_castImdEENSt9enable_ifIXaaaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueeqstS4_stS3_srSt10is_trivialIS4_E5valuesrSt21is_trivially_copyableIS3_E5valueES4_E4typeERKS3_,comdat
	.weak	_ZN8bitstuff9byte_castImdEENSt9enable_ifIXaaaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueeqstS4_stS3_srSt10is_trivialIS4_E5valuesrSt21is_trivially_copyableIS3_E5valueES4_E4typeERKS3_
	.type	_ZN8bitstuff9byte_castImdEENSt9enable_ifIXaaaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueeqstS4_stS3_srSt10is_trivialIS4_E5valuesrSt21is_trivially_copyableIS3_E5valueES4_E4typeERKS3_, @function
_ZN8bitstuff9byte_castImdEENSt9enable_ifIXaaaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueeqstS4_stS3_srSt10is_trivialIS4_E5valuesrSt21is_trivially_copyableIS3_E5valueES4_E4typeERKS3_:
.LFB1792:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1792:
	.size	_ZN8bitstuff9byte_castImdEENSt9enable_ifIXaaaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueeqstS4_stS3_srSt10is_trivialIS4_E5valuesrSt21is_trivially_copyableIS3_E5valueES4_E4typeERKS3_, .-_ZN8bitstuff9byte_castImdEENSt9enable_ifIXaaaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueeqstS4_stS3_srSt10is_trivialIS4_E5valuesrSt21is_trivially_copyableIS3_E5valueES4_E4typeERKS3_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2040:
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
	jne	.L9
	cmpl	$65535, -8(%rbp)
	jne	.L9
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	call	__cxa_atexit
.L9:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2040:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2041:
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
.LFE2041:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.section	.rodata
	.align 8
.LC0:
	.long	3229815407
	.long	1074340298
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 8.2.1 20181011 (Red Hat 8.2.1-4)"
	.section	.note.GNU-stack,"",@progbits
