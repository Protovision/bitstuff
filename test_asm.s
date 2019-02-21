	.file	"test_asm.cpp"
	.section .rdata,"dr"
_ZStL19piecewise_construct:
	.space 1
.lcomm _ZStL8__ioinit,1,1
	.globl	large_object
	.bss
	.align 32
large_object:
	.space 1024
	.text
	.globl	_Z20do_fastest_byte_castv
	.def	_Z20do_fastest_byte_castv;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z20do_fastest_byte_castv
_Z20do_fastest_byte_castv:
.LFB1505:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
/APP
 # 18 "test_asm.cpp" 1
	# BEGIN GENERATED ASM FOR: byte_cast<uintptr_t>(&cin);
 # 0 "" 2
/NO_APP
	movq	.refptr._ZSt3cin(%rip), %rax
	movq	%rax, -8(%rbp)
/APP
 # 20 "test_asm.cpp" 1
	# END GENERATED ASM
 # 0 "" 2
/NO_APP
	nop
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z24do_pretty_fast_byte_castv
	.def	_Z24do_pretty_fast_byte_castv;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z24do_pretty_fast_byte_castv
_Z24do_pretty_fast_byte_castv:
.LFB1506:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
/APP
 # 25 "test_asm.cpp" 1
	# BEGIN GENERATED ASM FOR: byte_cast<uint32_t>(9.81f);
 # 0 "" 2
/NO_APP
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
/APP
 # 27 "test_asm.cpp" 1
	# END GENERATED ASM
 # 0 "" 2
/NO_APP
	nop
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z24do_not_as_fast_byte_castv
	.def	_Z24do_not_as_fast_byte_castv;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z24do_not_as_fast_byte_castv
_Z24do_not_as_fast_byte_castv:
.LFB1507:
	pushq	%rbp
	.seh_pushreg	%rbp
	subq	$1056, %rsp
	.seh_stackalloc	1056
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
/APP
 # 32 "test_asm.cpp" 1
	# BEGIN GENERATED ASM FOR: byte_cast<U>(large_object);
 # 0 "" 2
/NO_APP
	leaq	-96(%rbp), %rax
	leaq	large_object(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN8bitstuff9byte_castI1U1TEENSt9enable_ifIXaaaaaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueeqstS6_stS5_srSt10is_trivialIS6_E5valuesrSt21is_trivially_copyableIS5_E5valuegtstS5_stmES6_E4typeERKS5_
/APP
 # 34 "test_asm.cpp" 1
	# END GENERATED ASM
 # 0 "" 2
/NO_APP
	nop
	addq	$1056, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB1508:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	call	__main
	call	_Z20do_fastest_byte_castv
	call	_Z24do_pretty_fast_byte_castv
	call	_Z24do_not_as_fast_byte_castv
	movl	$0, %eax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN8bitstuff9byte_castI1U1TEENSt9enable_ifIXaaaaaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueeqstS6_stS5_srSt10is_trivialIS6_E5valuesrSt21is_trivially_copyableIS5_E5valuegtstS5_stmES6_E4typeERKS5_,"x"
	.linkonce discard
	.globl	_ZN8bitstuff9byte_castI1U1TEENSt9enable_ifIXaaaaaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueeqstS6_stS5_srSt10is_trivialIS6_E5valuesrSt21is_trivially_copyableIS5_E5valuegtstS5_stmES6_E4typeERKS5_
	.def	_ZN8bitstuff9byte_castI1U1TEENSt9enable_ifIXaaaaaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueeqstS6_stS5_srSt10is_trivialIS6_E5valuesrSt21is_trivially_copyableIS5_E5valuegtstS5_stmES6_E4typeERKS5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8bitstuff9byte_castI1U1TEENSt9enable_ifIXaaaaaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueeqstS6_stS5_srSt10is_trivialIS6_E5valuesrSt21is_trivially_copyableIS5_E5valuegtstS5_stmES6_E4typeERKS5_
_ZN8bitstuff9byte_castI1U1TEENSt9enable_ifIXaaaaaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueeqstS6_stS5_srSt10is_trivialIS6_E5valuesrSt21is_trivially_copyableIS5_E5valuegtstS5_stmES6_E4typeERKS5_:
.LFB1721:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	32(%rbp), %rax
	movq	40(%rbp), %rdx
	movl	$1024, %ecx
	movq	(%rdx), %r8
	movq	%r8, (%rax)
	movl	%ecx, %r8d
	addq	%rax, %r8
	leaq	8(%r8), %r9
	movl	%ecx, %r8d
	addq	%rdx, %r8
	addq	$8, %r8
	movq	-16(%r8), %r8
	movq	%r8, -16(%r9)
	leaq	8(%rax), %r8
	andq	$-8, %r8
	subq	%r8, %rax
	subq	%rax, %rdx
	addl	%eax, %ecx
	andl	$-8, %ecx
	movl	%ecx, %eax
	shrl	$3, %eax
	movl	%eax, %eax
	movq	%r8, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rcx
	rep movsq
	nop
	movq	32(%rbp), %rax
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.text
	.def	_Z41__static_initialization_and_destruction_0ii;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z41__static_initialization_and_destruction_0ii
_Z41__static_initialization_and_destruction_0ii:
.LFB1889:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	cmpl	$1, 16(%rbp)
	jne	.L12
	cmpl	$65535, 24(%rbp)
	jne	.L12
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitC1Ev
	movq	.refptr.__dso_handle(%rip), %r8
	leaq	_ZStL8__ioinit(%rip), %rdx
	movq	.refptr._ZNSt8ios_base4InitD1Ev(%rip), %rcx
	call	__cxa_atexit
.L12:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_GLOBAL__sub_I_large_object;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I_large_object
_GLOBAL__sub_I_large_object:
.LFB1890:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	$65535, %edx
	movl	$1, %ecx
	call	_Z41__static_initialization_and_destruction_0ii
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I_large_object
	.section .rdata,"dr"
	.align 4
.LC0:
	.long	1092416963
	.ident	"GCC: (GNU) 6.4.0"
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	__cxa_atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZNSt8ios_base4InitD1Ev, "dr"
	.globl	.refptr._ZNSt8ios_base4InitD1Ev
	.linkonce	discard
.refptr._ZNSt8ios_base4InitD1Ev:
	.quad	_ZNSt8ios_base4InitD1Ev
	.section	.rdata$.refptr.__dso_handle, "dr"
	.globl	.refptr.__dso_handle
	.linkonce	discard
.refptr.__dso_handle:
	.quad	__dso_handle
	.section	.rdata$.refptr._ZSt3cin, "dr"
	.globl	.refptr._ZSt3cin
	.linkonce	discard
.refptr._ZSt3cin:
	.quad	_ZSt3cin
