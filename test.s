	.file	"test.cpp"
	.text
	.section .rdata,"dr"
_ZStL19piecewise_construct:
	.space 1
	.section	.text$_ZNSt11char_traitsIcE6assignERcRKc,"x"
	.linkonce discard
	.globl	_ZNSt11char_traitsIcE6assignERcRKc
	.def	_ZNSt11char_traitsIcE6assignERcRKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11char_traitsIcE6assignERcRKc
_ZNSt11char_traitsIcE6assignERcRKc:
.LFB411:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movzbl	(%rax), %edx
	movq	16(%rbp), %rax
	movb	%dl, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZStanSt13_Ios_FmtflagsS_,"x"
	.linkonce discard
	.globl	_ZStanSt13_Ios_FmtflagsS_
	.def	_ZStanSt13_Ios_FmtflagsS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZStanSt13_Ios_FmtflagsS_
_ZStanSt13_Ios_FmtflagsS_:
.LFB1109:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	16(%rbp), %eax
	andl	24(%rbp), %eax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZStorSt13_Ios_FmtflagsS_,"x"
	.linkonce discard
	.globl	_ZStorSt13_Ios_FmtflagsS_
	.def	_ZStorSt13_Ios_FmtflagsS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZStorSt13_Ios_FmtflagsS_
_ZStorSt13_Ios_FmtflagsS_:
.LFB1110:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	16(%rbp), %eax
	orl	24(%rbp), %eax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZStcoSt13_Ios_Fmtflags,"x"
	.linkonce discard
	.globl	_ZStcoSt13_Ios_Fmtflags
	.def	_ZStcoSt13_Ios_Fmtflags;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZStcoSt13_Ios_Fmtflags
_ZStcoSt13_Ios_Fmtflags:
.LFB1112:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	16(%rbp), %eax
	notl	%eax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZStoRRSt13_Ios_FmtflagsS_,"x"
	.linkonce discard
	.globl	_ZStoRRSt13_Ios_FmtflagsS_
	.def	_ZStoRRSt13_Ios_FmtflagsS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZStoRRSt13_Ios_FmtflagsS_
_ZStoRRSt13_Ios_FmtflagsS_:
.LFB1113:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	24(%rbp), %edx
	movl	%eax, %ecx
	call	_ZStorSt13_Ios_FmtflagsS_
	movl	%eax, %edx
	movq	16(%rbp), %rax
	movl	%edx, (%rax)
	movq	16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZStaNRSt13_Ios_FmtflagsS_,"x"
	.linkonce discard
	.globl	_ZStaNRSt13_Ios_FmtflagsS_
	.def	_ZStaNRSt13_Ios_FmtflagsS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZStaNRSt13_Ios_FmtflagsS_
_ZStaNRSt13_Ios_FmtflagsS_:
.LFB1114:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	24(%rbp), %edx
	movl	%eax, %ecx
	call	_ZStanSt13_Ios_FmtflagsS_
	movl	%eax, %edx
	movq	16(%rbp), %rax
	movl	%edx, (%rax)
	movq	16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_
	.def	_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_
_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_:
.LFB1143:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	%r8d, 32(%rbp)
	movq	16(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	32(%rbp), %eax
	movl	%eax, %ecx
	call	_ZStcoSt13_Ios_Fmtflags
	movl	%eax, %edx
	movq	16(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rcx
	call	_ZStaNRSt13_Ios_FmtflagsS_
	movl	32(%rbp), %edx
	movl	24(%rbp), %eax
	movl	%eax, %ecx
	call	_ZStanSt13_Ios_FmtflagsS_
	movl	%eax, %edx
	movq	16(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rcx
	call	_ZStoRRSt13_Ios_FmtflagsS_
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt8ios_base6getlocEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt8ios_base6getlocEv
	.def	_ZNKSt8ios_base6getlocEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt8ios_base6getlocEv
_ZNKSt8ios_base6getlocEv:
.LFB1149:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	addq	$208, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt6localeC1ERKS_
	movq	16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt3hexRSt8ios_base,"x"
	.linkonce discard
	.globl	_ZSt3hexRSt8ios_base
	.def	_ZSt3hexRSt8ios_base;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt3hexRSt8ios_base
_ZSt3hexRSt8ios_base:
.LFB1171:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	$74, %r8d
	movl	$8, %edx
	movq	16(%rbp), %rcx
	call	_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_
	movq	16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt5ctypeIcE5widenEc,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt5ctypeIcE5widenEc
	.def	_ZNKSt5ctypeIcE5widenEc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt5ctypeIcE5widenEc
_ZNKSt5ctypeIcE5widenEc:
.LFB1267:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, %eax
	movb	%al, 24(%rbp)
	movq	16(%rbp), %rax
	movzbl	56(%rax), %eax
	testb	%al, %al
	je	.L19
	movzbl	24(%rbp), %eax
	movzbl	%al, %eax
	movq	16(%rbp), %rdx
	cltq
	movzbl	57(%rdx,%rax), %eax
	jmp	.L20
.L19:
	movq	16(%rbp), %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movsbl	24(%rbp), %edx
	movq	16(%rbp), %rcx
	call	*%rax
.L20:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
.lcomm _ZStL8__ioinit,1,1
	.section	.text$_ZNSt12_Base_bitsetILm1EEC2Ey,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Base_bitsetILm1EEC2Ey
	.def	_ZNSt12_Base_bitsetILm1EEC2Ey;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Base_bitsetILm1EEC2Ey
_ZNSt12_Base_bitsetILm1EEC2Ey:
.LFB1546:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Base_bitsetILm1EE11_S_whichbitEm,"x"
	.linkonce discard
	.globl	_ZNSt12_Base_bitsetILm1EE11_S_whichbitEm
	.def	_ZNSt12_Base_bitsetILm1EE11_S_whichbitEm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Base_bitsetILm1EE11_S_whichbitEm
_ZNSt12_Base_bitsetILm1EE11_S_whichbitEm:
.LFB1550:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	andl	$63, %eax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Base_bitsetILm1EE10_S_maskbitEm,"x"
	.linkonce discard
	.globl	_ZNSt12_Base_bitsetILm1EE10_S_maskbitEm
	.def	_ZNSt12_Base_bitsetILm1EE10_S_maskbitEm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Base_bitsetILm1EE10_S_maskbitEm
_ZNSt12_Base_bitsetILm1EE10_S_maskbitEm:
.LFB1551:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSt12_Base_bitsetILm1EE11_S_whichbitEm
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt12_Base_bitsetILm1EE10_M_getwordEm,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt12_Base_bitsetILm1EE10_M_getwordEm
	.def	_ZNKSt12_Base_bitsetILm1EE10_M_getwordEm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt12_Base_bitsetILm1EE10_M_getwordEm
_ZNKSt12_Base_bitsetILm1EE10_M_getwordEm:
.LFB1553:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
_ZStL13allocator_arg:
	.space 1
_ZStL6ignore:
	.space 1
	.align 8
_ZL17large_object_size:
	.quad	1024
	.globl	large_object
	.bss
	.align 32
large_object:
	.space 1024
	.text
	.globl	_Z19do_fastest_bit_castv
	.def	_Z19do_fastest_bit_castv;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z19do_fastest_bit_castv
_Z19do_fastest_bit_castv:
.LFB2253:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
/APP
 # 17 "test.cpp" 1
	# BEGIN FASTEST BYTE CAST
 # 0 "" 2
/NO_APP
	movq	.refptr._ZSt3cin(%rip), %rax
	movq	%rax, -8(%rbp)
/APP
 # 19 "test.cpp" 1
	# END FASTEST BYTE CAST
 # 0 "" 2
/NO_APP
	nop
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z16do_fast_bit_castv
	.def	_Z16do_fast_bit_castv;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z16do_fast_bit_castv
_Z16do_fast_bit_castv:
.LFB2254:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
/APP
 # 24 "test.cpp" 1
	# BEGIN FAST BYTE CAST
 # 0 "" 2
/NO_APP
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
/APP
 # 26 "test.cpp" 1
	# END FAST BYTE CAST
 # 0 "" 2
/NO_APP
	nop
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z11do_bit_castv
	.def	_Z11do_bit_castv;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z11do_bit_castv
_Z11do_bit_castv:
.LFB2255:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	subq	$2048, %rsp
	.seh_stackalloc	2048
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
/APP
 # 31 "test.cpp" 1
	# BEGIN BYTE CAST
 # 0 "" 2
/NO_APP
	leaq	-128(%rbp), %rax
	leaq	large_object(%rip), %rdx
	movl	$128, %ecx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	rep movsq
	leaq	-128(%rbp), %rdx
	leaq	896(%rbp), %rax
	movq	%rdx, %r8
	movl	$128, %edx
	movq	%rax, %rdi
	movq	%r8, %rsi
	movq	%rdx, %rcx
	rep movsq
/APP
 # 33 "test.cpp" 1
	# END BYTE CAST
 # 0 "" 2
/NO_APP
	nop
	addq	$2048, %rsp
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB2256:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	call	__main
	call	_Z19do_fastest_bit_castv
	call	_Z16do_fast_bit_castv
	call	_Z11do_bit_castv
	movq	$0, -56(%rbp)
	movl	$0, %eax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSolsEm
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	movq	%rax, %rdx
	movl	$1042284544, -84(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	leaq	-88(%rbp), %rax
	movss	(%rax), %xmm0
	movaps	%xmm0, %xmm1
	movq	%rdx, %rcx
	call	_ZNSolsEf
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	movq	%rax, %rbx
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -92(%rbp)
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	leaq	-96(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6bitsetILm32EEC1Ey
	leaq	-64(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	movq	%rax, %rcx
	leaq	_ZSt3hexRSt8ios_base(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSt8ios_baseS0_E
	movq	%rax, %rcx
	movsd	.LC2(%rip), %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	leaq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	call	_ZNSolsEm
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	movl	$0, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6bitsetILm32EEC1Ey,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6bitsetILm32EEC1Ey
	.def	_ZNSt6bitsetILm32EEC1Ey;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6bitsetILm32EEC1Ey
_ZNSt6bitsetILm32EEC1Ey:
.LFB2524:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt13_Sanitize_valILm32ELb1EE18_S_do_sanitize_valEy
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNSt12_Base_bitsetILm1EEC2Ey
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE,"x"
	.linkonce discard
	.globl	_ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE
	.def	_ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE
_ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE:
.LFB2525:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -32(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-88(%rbp), %rax
	movq	%rax, %rcx
.LEHB0:
	call	_ZNSsC1Ev
.LEHE0:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	subq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt8ios_base6getlocEv
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
.LEHB1:
	call	_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale
.LEHE1:
	movq	%rax, -72(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6localeD1Ev
	movq	-72(%rbp), %rax
	movl	$49, %edx
	movq	%rax, %rcx
.LEHB2:
	call	_ZNKSt5ctypeIcE5widenEc
	movsbl	%al, %ebx
	movq	-72(%rbp), %rax
	movl	$48, %edx
	movq	%rax, %rcx
	call	_ZNKSt5ctypeIcE5widenEc
	movsbl	%al, %ecx
	leaq	-88(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	%ebx, %r9d
	movl	%ecx, %r8d
	movq	%rax, %rcx
	call	_ZNKSt6bitsetILm32EE17_M_copy_to_stringIcSt11char_traitsIcESaIcEEEvRSbIT_T0_T1_ES5_S5_
	leaq	-88(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rcx
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
.LEHE2:
	movq	%rax, %rbx
	leaq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSsD1Ev
	movq	%rbx, %rax
	jmp	.L47
.L45:
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6localeD1Ev
	jmp	.L44
.L46:
	movq	%rax, %rbx
.L44:
	leaq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSsD1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB3:
	call	_Unwind_Resume
.LEHE3:
.L47:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2525:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2525-.LLSDACSB2525
.LLSDACSB2525:
	.uleb128 .LEHB0-.LFB2525
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2525
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L45-.LFB2525
	.uleb128 0
	.uleb128 .LEHB2-.LFB2525
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L46-.LFB2525
	.uleb128 0
	.uleb128 .LEHB3-.LFB2525
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE2525:
	.section	.text$_ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt13_Sanitize_valILm32ELb1EE18_S_do_sanitize_valEy,"x"
	.linkonce discard
	.globl	_ZNSt13_Sanitize_valILm32ELb1EE18_S_do_sanitize_valEy
	.def	_ZNSt13_Sanitize_valILm32ELb1EE18_S_do_sanitize_valEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt13_Sanitize_valILm32ELb1EE18_S_do_sanitize_valEy
_ZNSt13_Sanitize_valILm32ELb1EE18_S_do_sanitize_valEy:
.LFB2614:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movl	%eax, %eax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6bitsetILm32EE17_M_copy_to_stringIcSt11char_traitsIcESaIcEEEvRSbIT_T0_T1_ES5_S5_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6bitsetILm32EE17_M_copy_to_stringIcSt11char_traitsIcESaIcEEEvRSbIT_T0_T1_ES5_S5_
	.def	_ZNKSt6bitsetILm32EE17_M_copy_to_stringIcSt11char_traitsIcESaIcEEEvRSbIT_T0_T1_ES5_S5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6bitsetILm32EE17_M_copy_to_stringIcSt11char_traitsIcESaIcEEEvRSbIT_T0_T1_ES5_S5_
_ZNKSt6bitsetILm32EE17_M_copy_to_stringIcSt11char_traitsIcESaIcEEEvRSbIT_T0_T1_ES5_S5_:
.LFB2618:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movl	%r8d, %eax
	movl	%r9d, %edx
	movb	%al, 32(%rbp)
	movl	%edx, %eax
	movb	%al, 40(%rbp)
	movsbl	32(%rbp), %edx
	movq	24(%rbp), %rax
	movl	%edx, %r8d
	movl	$32, %edx
	movq	%rax, %rcx
	call	_ZNSs6assignEmc
	movq	$32, -8(%rbp)
.L53:
	cmpq	$0, -8(%rbp)
	je	.L54
	movq	-8(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNKSt6bitsetILm32EE15_Unchecked_testEm
	testb	%al, %al
	je	.L52
	movl	$32, %eax
	subq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSsixEm
	movq	%rax, %rcx
	leaq	40(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSt11char_traitsIcE6assignERcRKc
.L52:
	subq	$1, -8(%rbp)
	jmp	.L53
.L54:
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6bitsetILm32EE15_Unchecked_testEm,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6bitsetILm32EE15_Unchecked_testEm
	.def	_ZNKSt6bitsetILm32EE15_Unchecked_testEm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6bitsetILm32EE15_Unchecked_testEm
_ZNKSt6bitsetILm32EE15_Unchecked_testEm:
.LFB2651:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNKSt12_Base_bitsetILm1EE10_M_getwordEm
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Base_bitsetILm1EE10_S_maskbitEm
	andq	%rbx, %rax
	testq	%rax, %rax
	setne	%al
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.text
	.def	_Z41__static_initialization_and_destruction_0ii;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z41__static_initialization_and_destruction_0ii
_Z41__static_initialization_and_destruction_0ii:
.LFB2710:
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
	jne	.L59
	cmpl	$65535, 24(%rbp)
	jne	.L59
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitC1Ev
	movq	.refptr.__dso_handle(%rip), %r8
	leaq	_ZStL8__ioinit(%rip), %rdx
	movq	.refptr._ZNSt8ios_base4InitD1Ev(%rip), %rcx
	call	__cxa_atexit
.L59:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_GLOBAL__sub_I_large_object;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I_large_object
_GLOBAL__sub_I_large_object:
.LFB2711:
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
	.long	1042282866
	.align 4
.LC1:
	.long	1042284544
	.align 8
.LC2:
	.long	1374389535
	.long	1076076216
	.ident	"GCC: (GNU) 7.4.0"
	.def	_ZNSt6localeC1ERKS_;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt5ctypeIcE13_M_widen_initEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEm;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEPFRSoS_E;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEf;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEPFRSt8ios_baseS0_E;	.scl	2;	.type	32;	.endef
	.def	_ZNSsC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6localeD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E;	.scl	2;	.type	32;	.endef
	.def	_ZNSsD1Ev;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZNSs6assignEmc;	.scl	2;	.type	32;	.endef
	.def	_ZNSsixEm;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr._ZSt3cin, "dr"
	.globl	.refptr._ZSt3cin
	.linkonce	discard
.refptr._ZSt3cin:
	.quad	_ZSt3cin
