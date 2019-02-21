	.file	"test.cpp"
	.section .rdata,"dr"
_ZStL19piecewise_construct:
	.space 1
.lcomm _ZStL8__ioinit,1,1
	.globl	a
	.bss
	.align 32
a:
	.space 256
	.globl	b
	.align 32
b:
	.space 256
	.section	.text$_ZSt3powIfiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_,"x"
	.linkonce discard
	.globl	_ZSt3powIfiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_
	.def	_ZSt3powIfiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt3powIfiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_
_ZSt3powIfiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_:
.LFB1721:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movss	%xmm0, 16(%rbp)
	movl	%edx, 24(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sd	24(%rbp), %xmm1
	cvtss2sd	16(%rbp), %xmm0
	call	pow
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "Address of std::cout in decimal: \0"
	.align 8
.LC2:
	.ascii "3.1415 represented in uint64_t: \0"
	.align 8
.LC5:
	.ascii "156.25f is equal to 1.5625f * 10^\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB1720:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$344, %rsp
	.seh_stackalloc	344
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	movaps	%xmm6, 192(%rbp)
	.seh_savexmm	%xmm6, 320
	.seh_endprologue
	call	__main
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZN8bitstuff9byte_castImPSoEENSt9enable_ifIXsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueES5_E4typeES4_
	movq	%rax, %rbx
	leaq	.LC0(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZNSolsEm
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	movq	.LC1(%rip), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	call	_ZN8bitstuff9byte_castImdEENSt9enable_ifIXaaaaaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueeqstS4_stS3_srSt10is_trivialIS4_E5valuesrSt21is_trivially_copyableIS3_E5valuelestS3_stmES4_E4typeES3_
	movq	%rax, %rbx
	leaq	.LC2(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZNSolsEm
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	leaq	-80(%rbp), %rax
	leaq	b(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN8bitstuff9byte_castI1T1UEENSt9enable_ifIXaaaaaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueeqstS6_stS5_srSt10is_trivialIS6_E5valuesrSt21is_trivially_copyableIS5_E5valuegtstS5_stmES6_E4typeERKS5_
	leaq	a(%rip), %rax
	leaq	-80(%rbp), %rdx
	movl	$32, %ecx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	rep movsq
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, 188(%rbp)
	movl	188(%rbp), %eax
	movl	%eax, -88(%rbp)
	movss	-88(%rbp), %xmm0
	call	_ZN8bitstuff9byte_castIifEENSt9enable_ifIXaaaaaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueeqstS4_stS3_srSt10is_trivialIS4_E5valuesrSt21is_trivially_copyableIS3_E5valuelestS3_stmES4_E4typeES3_
	sarl	$23, %eax
	movzbl	%al, %eax
	subl	$127, %eax
	movl	%eax, %edx
	movss	.LC4(%rip), %xmm0
	call	_ZSt3powIfiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_
	call	log10
	call	round
	movapd	%xmm0, %xmm6
	leaq	.LC5(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movapd	%xmm6, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	movl	$0, %eax
	movaps	192(%rbp), %xmm6
	addq	$344, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN8bitstuff9byte_castImPSoEENSt9enable_ifIXsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueES5_E4typeES4_,"x"
	.linkonce discard
	.globl	_ZN8bitstuff9byte_castImPSoEENSt9enable_ifIXsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueES5_E4typeES4_
	.def	_ZN8bitstuff9byte_castImPSoEENSt9enable_ifIXsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueES5_E4typeES4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8bitstuff9byte_castImPSoEENSt9enable_ifIXsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueES5_E4typeES4_
_ZN8bitstuff9byte_castImPSoEENSt9enable_ifIXsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueES5_E4typeES4_:
.LFB1933:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN8bitstuff9byte_castImdEENSt9enable_ifIXaaaaaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueeqstS4_stS3_srSt10is_trivialIS4_E5valuesrSt21is_trivially_copyableIS3_E5valuelestS3_stmES4_E4typeES3_,"x"
	.linkonce discard
	.globl	_ZN8bitstuff9byte_castImdEENSt9enable_ifIXaaaaaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueeqstS4_stS3_srSt10is_trivialIS4_E5valuesrSt21is_trivially_copyableIS3_E5valuelestS3_stmES4_E4typeES3_
	.def	_ZN8bitstuff9byte_castImdEENSt9enable_ifIXaaaaaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueeqstS4_stS3_srSt10is_trivialIS4_E5valuesrSt21is_trivially_copyableIS3_E5valuelestS3_stmES4_E4typeES3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8bitstuff9byte_castImdEENSt9enable_ifIXaaaaaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueeqstS4_stS3_srSt10is_trivialIS4_E5valuesrSt21is_trivially_copyableIS3_E5valuelestS3_stmES4_E4typeES3_
_ZN8bitstuff9byte_castImdEENSt9enable_ifIXaaaaaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueeqstS4_stS3_srSt10is_trivialIS4_E5valuesrSt21is_trivially_copyableIS3_E5valuelestS3_stmES4_E4typeES3_:
.LFB1937:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movsd	%xmm0, 16(%rbp)
	movq	$0, -8(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN8bitstuff9byte_castI1T1UEENSt9enable_ifIXaaaaaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueeqstS6_stS5_srSt10is_trivialIS6_E5valuesrSt21is_trivially_copyableIS5_E5valuegtstS5_stmES6_E4typeERKS5_,"x"
	.linkonce discard
	.globl	_ZN8bitstuff9byte_castI1T1UEENSt9enable_ifIXaaaaaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueeqstS6_stS5_srSt10is_trivialIS6_E5valuesrSt21is_trivially_copyableIS5_E5valuegtstS5_stmES6_E4typeERKS5_
	.def	_ZN8bitstuff9byte_castI1T1UEENSt9enable_ifIXaaaaaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueeqstS6_stS5_srSt10is_trivialIS6_E5valuesrSt21is_trivially_copyableIS5_E5valuegtstS5_stmES6_E4typeERKS5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8bitstuff9byte_castI1T1UEENSt9enable_ifIXaaaaaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueeqstS6_stS5_srSt10is_trivialIS6_E5valuesrSt21is_trivially_copyableIS5_E5valuegtstS5_stmES6_E4typeERKS5_
_ZN8bitstuff9byte_castI1T1UEENSt9enable_ifIXaaaaaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueeqstS6_stS5_srSt10is_trivialIS6_E5valuesrSt21is_trivially_copyableIS5_E5valuegtstS5_stmES6_E4typeERKS5_:
.LFB1938:
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
	movl	$256, %ecx
	movl	$0, %r8d
	movq	%r8, (%rax)
	movl	%ecx, %edx
	addq	%rax, %rdx
	addq	$8, %rdx
	movq	%r8, -16(%rdx)
	leaq	8(%rax), %rdx
	andq	$-8, %rdx
	subq	%rdx, %rax
	addl	%eax, %ecx
	andl	$-8, %ecx
	movl	%ecx, %eax
	shrl	$3, %eax
	movl	%eax, %ecx
	movq	%rdx, %rdi
	movq	%r8, %rax
	rep stosq
	movq	32(%rbp), %rax
	movq	40(%rbp), %rdx
	movl	$256, %ecx
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
	.section	.text$_ZN8bitstuff9byte_castIifEENSt9enable_ifIXaaaaaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueeqstS4_stS3_srSt10is_trivialIS4_E5valuesrSt21is_trivially_copyableIS3_E5valuelestS3_stmES4_E4typeES3_,"x"
	.linkonce discard
	.globl	_ZN8bitstuff9byte_castIifEENSt9enable_ifIXaaaaaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueeqstS4_stS3_srSt10is_trivialIS4_E5valuesrSt21is_trivially_copyableIS3_E5valuelestS3_stmES4_E4typeES3_
	.def	_ZN8bitstuff9byte_castIifEENSt9enable_ifIXaaaaaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueeqstS4_stS3_srSt10is_trivialIS4_E5valuesrSt21is_trivially_copyableIS3_E5valuelestS3_stmES4_E4typeES3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8bitstuff9byte_castIifEENSt9enable_ifIXaaaaaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueeqstS4_stS3_srSt10is_trivialIS4_E5valuesrSt21is_trivially_copyableIS3_E5valuelestS3_stmES4_E4typeES3_
_ZN8bitstuff9byte_castIifEENSt9enable_ifIXaaaaaaaantsrNS_31is_reinterpret_cast_convertibleIT0_T_EE5valueeqstS4_stS3_srSt10is_trivialIS4_E5valuesrSt21is_trivially_copyableIS3_E5valuelestS3_stmES4_E4typeES3_:
.LFB1939:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movss	%xmm0, 16(%rbp)
	movl	$0, -4(%rbp)
	movl	16(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.text
	.def	_Z41__static_initialization_and_destruction_0ii;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z41__static_initialization_and_destruction_0ii
_Z41__static_initialization_and_destruction_0ii:
.LFB2113:
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
	jne	.L15
	cmpl	$65535, 24(%rbp)
	jne	.L15
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitC1Ev
	movq	.refptr.__dso_handle(%rip), %r8
	leaq	_ZStL8__ioinit(%rip), %rdx
	movq	.refptr._ZNSt8ios_base4InitD1Ev(%rip), %rcx
	call	__cxa_atexit
.L15:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_GLOBAL__sub_I_a;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I_a
_GLOBAL__sub_I_a:
.LFB2114:
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
	.quad	_GLOBAL__sub_I_a
	.section .rdata,"dr"
	.align 8
.LC1:
	.long	3229815407
	.long	1074340298
	.align 4
.LC3:
	.long	1125924864
	.align 4
.LC4:
	.long	1073741824
	.ident	"GCC: (GNU) 6.4.0"
	.def	pow;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEm;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEPFRSoS_E;	.scl	2;	.type	32;	.endef
	.def	log10;	.scl	2;	.type	32;	.endef
	.def	round;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEd;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, "dr"
	.globl	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.linkonce	discard
.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_:
	.quad	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
