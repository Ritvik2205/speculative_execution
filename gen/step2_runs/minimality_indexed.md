# Step 2 — minimal leaking cores, indexed victim (SPECTRE_V1, x86_64)

per-source cap 60, seed 0; 1-minimal ddmin with Spectector as the test. Core identity = slot stream (register / memory-cell renaming ignored). "Not in" = embeds in no window of the corpus as an ordered subsequence under one consistent renaming (2093 x86 training windows, all classes; 3373 benign functions).

| source | leaks minimised | body median | core median | core min-max | core size 1/2/3/4/5+ | distinct cores | distinct templates | cores not in any training window | cores not in benign corpus |
|---|---|---|---|---|---|---|---|---|---|
| gen_indexed_r0 | 60 | 26 | 4 | 2-5 | 0/4/0/48/8 | 57 | 43 | 36 (0.63) | 48 (0.84) |
| gen_indexed_r5 | 60 | 29 | 4 | 2-6 | 0/2/0/55/3 | 40 | 28 | 26 (0.65) | 35 (0.88) |
| benign_slot | 34 | 24 | 2 | 2-5 | 0/19/12/1/2 | 29 | 25 | 27 (0.93) | 3 (0.10) |
| train_v1_slot | 60 | 18 | 4 | 2-5 | 0/16/1/36/7 | 35 | 31 | 1 (0.03) | 27 (0.77) |

## Most frequent cores

| count | sources | in training | in benign | core |
|---|---|---|---|---|
| 11 | {'gen_indexed_r0': 1, 'gen_indexed_r5': 7, 'train_v1_slot': 3} | True | False | `jae	.Lgen_spec_end; movq	-16(%rbp), %r8; movzbl	(%rdx,%r8), %ecx; .Lgen_spec_end:` |
| 9 | {'gen_indexed_r0': 1, 'gen_indexed_r5': 7, 'train_v1_slot': 1} | True | False | `movq	-32(%rip), %rax; jae	.Lgen_spec_end; movq	(%rax,%rdx), %r10; .Lgen_spec_end:` |
| 7 | {'gen_indexed_r0': 2, 'gen_indexed_r5': 3, 'train_v1_slot': 2} | True | False | `jae	.Lgen_spec_end; movzbl	(%r10,%r11), %edx; movq	(%rbx,%rdx), %rsi; .Lgen_spec_end:` |
| 5 | {'train_v1_slot': 5} | True | False | `movzbl	(%r12,%r15), %edx; movq	(%r8,%rdx), %rax` |
| 4 | {'gen_indexed_r0': 1, 'gen_indexed_r5': 3} | True | False | `movq	-24(%rip), %r12; jae	.Lgen_spec_end; movzbl	(%r12,%rbx), %r12d; .Lgen_spec_end:` |
| 4 | {'gen_indexed_r0': 1, 'gen_indexed_r5': 2, 'train_v1_slot': 1} | True | False | `jae	.Lgen_spec_end; movzbl	-16(%rdx), %r12d; movb	-24(%r12), %sil; .Lgen_spec_end:` |
| 4 | {'train_v1_slot': 4} | True | False | `movl	-8(%rip), %esi; cmpq	%rsi, %r15; jae	.Lgen_spec_end; .Lgen_spec_end:` |
| 4 | {'train_v1_slot': 4} | True | False | `movzbl	-16(%r15), %edi; movb	-24(%rdi), %dl` |
| 3 | {'gen_indexed_r0': 2, 'gen_indexed_r5': 1} | False | False | `jae	.Lgen_spec_end; movzbl	(%r8,%rbx), %edi; movq	(%r8,%rdi), %r9; .Lgen_spec_end:` |
| 3 | {'gen_indexed_r0': 1, 'gen_indexed_r5': 2} | True | False | `jae	.Lgen_spec_end; movq	-16(%rbp), %r11; movzbl	(%rdx,%r11), %r11d; .Lgen_spec_end:` |
| 3 | {'gen_indexed_r0': 1, 'gen_indexed_r5': 2} | True | False | `movq	-8(%rip), %r8; jae	.Lgen_spec_end; movzbl	(%r8,%r12), %r9d; .Lgen_spec_end:` |
| 3 | {'benign_slot': 3} | False | True | `movq	-224(%r15), %rdx; movb	%r11b, (%rdx,%r13)` |
| 3 | {'train_v1_slot': 3} | True | True | `jbe	.Lgen_spec_end; movq	-16(%rip), %r8; movzbl	(%r8,%rdi), %edx; .Lgen_spec_end:` |
| 3 | {'train_v1_slot': 3} | True | True | `movl	-8(%rip), %edi; cmpq	%r15, %rdi; jbe	.Lgen_spec_end; .Lgen_spec_end:` |
| 3 | {'train_v1_slot': 3} | True | False | `jnb	.Lgen_spec_end; movzbl	(%r9,%rcx), %r11d; movq	(%r10,%r11), %rax; .Lgen_spec_end:` |

## Novel generator cores (not in any training window)

- ['gen_indexed_r0'] benign=False: `movq	%r15, -8(%rip); movslq	-8(%rip), %rcx; cmpq	%rcx, -24(%rbp); jae	.Lgen_spec_end; .Lgen_spec_end:`
- ['gen_indexed_r0'] benign=False: `jae	.Lgen_spec_end; movzbl	(%r11,%rsi), %r10d; movzbl	(%r11,%r10), %eax; .Lgen_spec_end:`
- ['gen_indexed_r0', 'gen_indexed_r5'] benign=False: `jae	.Lgen_spec_end; movzbl	(%r8,%rbx), %edi; movq	(%r8,%rdi), %r9; .Lgen_spec_end:`
- ['gen_indexed_r0'] benign=True: `cmpq	%rsi, %r11; jne	.Lgen_spec_end; movq	(%r12), %r12; movq	-24(%r12), %rcx; .Lgen_spec_end:`
- ['gen_indexed_r0'] benign=False: `movq	%r15, -8(%rip); movq	-8(%rip), %r12; movzbl	(%r12), %r12d; movq	(%r12,%rdx), %rdx`
- ['gen_indexed_r0'] benign=True: `movzbl	-16(%r15), %r10d; movzbl	-16(%r10), %r13d`
- ['gen_indexed_r0'] benign=False: `movzbl	-8(%r15), %edi; cmpq	%r15, %rdi; jae	.Lgen_spec_end; .Lgen_spec_end:`
- ['gen_indexed_r0'] benign=True: `je	.Lgen_spec_end; movzbl	-24(%rdx), %edx; movzbl	(%rdx,%rdi), %edx; .Lgen_spec_end:`
- ['gen_indexed_r0'] benign=False: `movq	%r15, -8(%rip); movzbl	-16(%rcx), %ecx; andq	-16(%rbp), %rcx; movzbl	(%rcx), %ecx`
- ['gen_indexed_r0'] benign=False: `jae	.Lgen_spec_end; movq	-16(%rbp), %rax; movzbl	(%rax), %edi; .Lgen_spec_end:`
- ['gen_indexed_r0'] benign=False: `jae	.Lgen_spec_end; movzbl	(%r9,%r11), %r11d; movzbl	-24(%r11), %r11d; .Lgen_spec_end:`
- ['gen_indexed_r0'] benign=False: `movq	-32(%rip), %rsi; jae	.Lgen_spec_end; movzbl	(%rsi), %esi; .Lgen_spec_end:`
- ['gen_indexed_r0'] benign=False: `movzbl	(%rcx,%r8), %eax; jae	.Lgen_spec_end; andl	%eax, %r8d; movb	%r10b, (%r8); .Lgen_spec_end:`
- ['gen_indexed_r0'] benign=True: `movzbl	(%r9,%rsi), %r9d; subl	$1, %ecx; js	.Lgen_spec_end; movzbl	-16(%r9), %esi; .Lgen_spec_end:`
- ['gen_indexed_r0'] benign=False: `movl	-32(%rip), %edi; jae	.Lgen_spec_end; movzbl	(%rdi,%rcx), %ecx; .Lgen_spec_end:`
- ['gen_indexed_r0'] benign=False: `movl	-8(%rip), %esi; jae	.Lgen_spec_end; movzbl	(%rsi,%r12), %esi; .Lgen_spec_end:`
- ['gen_indexed_r0'] benign=False: `jae	.Lgen_spec_end; movzbl	(%rax,%rax), %eax; movzbl	(%rsi,%rax), %r9d; .Lgen_spec_end:`
- ['gen_indexed_r0'] benign=False: `movq	%r15, -8(%rip); movslq	-8(%rip), %rax; movzbl	-16(%rax), %eax; movzbl	-24(%rax), %r10d`
- ['gen_indexed_r0'] benign=False: `jge	.Lgen_spec_end; movzbl	(%r13,%rsi), %r10d; movb	(%r10,%rsi), %r10b; .Lgen_spec_end:`
- ['gen_indexed_r0'] benign=False: `jbe	.Lgen_spec_end; movzbl	-24(%rbx), %ebx; movb	-24(%rbx), %bl; .Lgen_spec_end:`
- ['gen_indexed_r0'] benign=False: `jae	.Lgen_spec_end; movb	-8(%rip), %cl; movzbl	-16(%rcx), %ecx; .Lgen_spec_end:`
- ['gen_indexed_r0'] benign=False: `movq	%r15, -8(%rip); movzbl	(%rax,%r11), %eax; movzbl	-24(%rax), %eax; movzbl	(%rdi,%rax), %r11d`
- ['gen_indexed_r0'] benign=False: `jae	.Lgen_spec_end; movb	(%rcx,%rcx), %cl; movzbl	(%rcx), %ecx; .Lgen_spec_end:`
- ['gen_indexed_r0'] benign=False: `jae	.Lgen_spec_end; movzbl	(%r11,%rdx), %r10d; movzbl	(%r10,%rdx), %r10d; .Lgen_spec_end:`
- ['gen_indexed_r0'] benign=False: `jae	.Lgen_spec_end; movq	-16(%rbp), %rdi; movb	(%rdi,%rcx), %cl; .Lgen_spec_end:`
- ['gen_indexed_r0'] benign=True: `movq	-16(%rdx), %rax; jbe	.Lgen_spec_end; movq	%r13, (%rax); .Lgen_spec_end:`
- ['gen_indexed_r0'] benign=False: `jae	.Lgen_spec_end; movzbl	(%rdx,%rdx), %eax; movq	(%rdi,%rax), %r8; .Lgen_spec_end:`
- ['gen_indexed_r0'] benign=False: `jae	.Lgen_spec_end; movq	-24(%rbp), %rdi; movzbl	-24(%rdi), %r11d; .Lgen_spec_end:`
- ['gen_indexed_r0'] benign=False: `je	.Lgen_spec_end; movb	(%r11,%r9), %r11b; movzbl	(%rcx,%r11), %edi; .Lgen_spec_end:`
- ['gen_indexed_r0'] benign=True: `subl	$1, %r10d; js	.Lgen_spec_end; movzbl	-16(%r11), %eax; movzbl	-24(%rax), %r13d; .Lgen_spec_end:`
- ['gen_indexed_r0'] benign=True: `movzbl	(%r15,%r8), %r8d; movzbl	-24(%r8), %r8d`
- ['gen_indexed_r0'] benign=False: `jae	.Lgen_spec_end; movb	-24(%r11), %bl; andb	(%rbx), %cl; .Lgen_spec_end:`
- ['gen_indexed_r0'] benign=True: `movzbl	(%r15,%r13), %eax; movzbl	(%rdx,%rax), %r8d`
- ['gen_indexed_r0'] benign=False: `jae	.Lgen_spec_end; movq	-16(%rip), %r8; movb	-32(%r8), %dil; .Lgen_spec_end:`
- ['gen_indexed_r0'] benign=False: `jae	.Lgen_spec_end; movq	-32(%rip), %rcx; movzbl	(%r8,%rcx), %r12d; .Lgen_spec_end:`
- ['gen_indexed_r0'] benign=False: `cmpq	%rdx, -16(%rbp); jne	.Lgen_spec_end; movzbl	-24(%rdx), %edx; movzbl	-32(%rdx), %edx; .Lgen_spec_end:`
- ['gen_indexed_r5'] benign=False: `movzbl	(%rdx,%r15), %eax; movq	(%rdx,%rax), %r9`
- ['gen_indexed_r5'] benign=False: `jae	.Lgen_spec_end; movzbl	(%r12,%rdx), %edx; movzbl	(%rdx), %edx; .Lgen_spec_end:`
- ['gen_indexed_r5'] benign=False: `movq	-40(%rip), %r8; jae	.Lgen_spec_end; movq	(%r8,%rsi), %rsi; .Lgen_spec_end:`
- ['gen_indexed_r5'] benign=False: `jae	.Lgen_spec_end; movb	-32(%rbp), %r12b; cmpl	(%r12), %esi; .Lgen_spec_end:`
- ['gen_indexed_r5'] benign=False: `movq	%r15, -8(%rbp); movq	-8(%rbp), %r11; movq	(%r11), %rbx; movzbl	-32(%rbx), %r12d`
- ['gen_indexed_r5'] benign=False: `movq	(%r15), %r12; cmpq	(%r12), %r13`
- ['gen_indexed_r5'] benign=False: `jae	.Lgen_spec_end; movq	(%r11), %r10; movzbl	(%r11,%r10), %r10d; .Lgen_spec_end:`
- ['gen_indexed_r5'] benign=False: `jge	.Lgen_spec_end; movq	-24(%rbp), %rax; movb	(%r13,%rax), %al; .Lgen_spec_end:`
- ['gen_indexed_r5'] benign=False: `movq	%r15, -8(%rip); movq	-8(%rip), %r8; movq	-24(%rip), %rcx; cmpl	%r8d, %ecx; jae	.Lgen_spec_end; .Lgen_spec_end:`
- ['gen_indexed_r5'] benign=False: `movq	%r15, -8(%rip); movq	-8(%rip), %rbx; movq	(%rbx), %rbx; movzbl	(%rbx), %r9d`
- ['gen_indexed_r5'] benign=True: `jge	.Lgen_spec_end; movzbl	(%r13), %r13d; movzbl	(%r13), %r12d; .Lgen_spec_end:`
- ['gen_indexed_r5'] benign=True: `jle	.Lgen_spec_end; movzbl	-16(%r13), %r8d; movzbl	(%r8,%rdx), %ecx; .Lgen_spec_end:`
- ['gen_indexed_r5'] benign=False: `jge	.Lgen_spec_end; movl	-32(%rip), %edi; movzbl	-24(%rdi), %edi; .Lgen_spec_end:`
- ['gen_indexed_r5'] benign=False: `jae	.Lgen_spec_end; movzbl	(%r9,%r9), %r9d; movzbl	(%r9), %r9d; .Lgen_spec_end:`
- ['gen_indexed_r5'] benign=True: `jbe	.Lgen_spec_end; movzbl	-16(%r13), %r9d; movzbl	-24(%r9), %r10d; .Lgen_spec_end:`
- ['gen_indexed_r5'] benign=False: `jae	.Lgen_spec_end; movq	-16(%rbp), %rdi; movzbl	(%rdi), %edi; .Lgen_spec_end:`
- ['gen_indexed_r5'] benign=False: `movq	%r15, -8(%rip); movq	(%rdx), %rdx; movzbl	(%rdx), %edx; movzbl	(%rdx,%rsi), %esi`
- ['gen_indexed_r5'] benign=False: `movq	%r15, -8(%rip); movq	-8(%rip), %r8; movq	(%r8), %r8; movzbl	(%r8), %r8d`
- ['gen_indexed_r5'] benign=True: `movzbl	-16(%r10), %eax; cmpq	%rax, %r15; jnb	.Lgen_spec_end; .Lgen_spec_end:`
- ['gen_indexed_r5'] benign=False: `jae	.Lgen_spec_end; movzbl	(%rdi,%r11), %edi; movzbl	(%rdi,%r12), %esi; .Lgen_spec_end:`
- ['gen_indexed_r5'] benign=False: `jae	.Lgen_spec_end; movl	(%rbp), %esi; movq	$0, (%rsi); .Lgen_spec_end:`
- ['gen_indexed_r5'] benign=False: `jge	.Lgen_spec_end; movzbl	(%rax,%rax), %eax; movq	(%r8,%rax), %rdi; .Lgen_spec_end:`
- ['gen_indexed_r5'] benign=False: `jae	.Lgen_spec_end; movzbl	(%rsi,%rdi), %r13d; movzbl	(%r13), %r13d; .Lgen_spec_end:`
- ['gen_indexed_r5'] benign=False: `jae	.Lgen_spec_end; movzbl	-32(%rip), %eax; movb	(%rax,%r9), %dil; .Lgen_spec_end:`
- ['gen_indexed_r5'] benign=True: `movq	%r15, -8(%rip); movzbl	(%rdi), %r10d; movzbl	(%r10), %r10d; movzbl	(%rdi,%r10), %r8d`
