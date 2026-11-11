# Step 2 — minimal leaking cores, gate harness (SPECTRE_V1, x86_64)

per-source cap 60, seed 0; 1-minimal ddmin with Spectector as the test. Core identity = slot stream (register / memory-cell renaming ignored). "Not in" = embeds in no window of the corpus as an ordered subsequence under one consistent renaming (2093 x86 training windows, all classes; 670 benign functions).

| source | leaks minimised | body median | core median | core min-max | core size 1/2/3/4/5+ | distinct cores | distinct templates | cores not in any training window | cores not in benign corpus |
|---|---|---|---|---|---|---|---|---|---|
| gen_slot_r0 | 60 | 25 | 2 | 2-5 | 0/47/6/5/2 | 36 | 20 | 20 (0.56) | 23 (0.64) |
| gen_slot_r5 | 60 | 26 | 2 | 2-4 | 0/46/10/4/0 | 29 | 19 | 17 (0.59) | 17 (0.59) |
| gen_plain_r0 | 60 | 25 | 2 | 2-4 | 0/45/8/7/0 | 41 | 32 | 35 (0.85) | 20 (0.49) |
| gen_plain_r5 | 60 | 22 | 2 | 2-4 | 0/49/4/7/0 | 38 | 30 | 33 (0.87) | 14 (0.37) |
| benign_slot | 60 | 26 | 3 | 2-5 | 0/20/16/23/1 | 52 | 42 | 43 (0.83) | 2 (0.04) |
| train_v1_slot | 60 | 17 | 2 | 2-5 | 0/34/9/16/1 | 32 | 26 | 1 (0.03) | 17 (0.53) |

## Most frequent cores

| count | sources | in training | in benign | core |
|---|---|---|---|---|
| 41 | {'gen_slot_r0': 11, 'gen_slot_r5': 19, 'gen_plain_r0': 1, 'train_v1_slot': 10} | True | False | `movzbl	(%rbx,%rsi), %r10d; movq	(%r13,%r10), %rdi` |
| 13 | {'gen_slot_r0': 3, 'gen_slot_r5': 8, 'train_v1_slot': 2} | True | False | `movzbl	(%rbx,%rdi), %ecx; movslq	%ecx, %rdi; movzbl	(%rbx,%rdi), %ecx` |
| 8 | {'gen_slot_r0': 2, 'gen_slot_r5': 1, 'train_v1_slot': 5} | True | False | `movzbl	-16(%rbx), %r9d; movb	-32(%r9), %cl` |
| 8 | {'gen_slot_r0': 3, 'gen_slot_r5': 4, 'train_v1_slot': 1} | True | True | `movq	-16(%rip), %r13; movq	(%r13,%r8), %rbx` |
| 8 | {'gen_slot_r0': 6, 'gen_slot_r5': 2} | True | True | `movl	-16(%rip), %r9d; movzbl	(%rdi,%r9), %r8d` |
| 8 | {'gen_plain_r0': 6, 'gen_plain_r5': 2} | False | True | `movl	(%rsi), %r12d; movq	(%r12), %r13` |
| 7 | {'gen_plain_r0': 6, 'gen_plain_r5': 1} | False | True | `movq	(%rdi), %rcx; movzbl	(%rcx,%rdx), %r8d` |
| 7 | {'gen_plain_r5': 7} | False | True | `movzbl	(%r11,%rdx), %edi; movzbl	(%rdi), %r8d` |
| 4 | {'gen_slot_r0': 1, 'gen_plain_r0': 2, 'gen_plain_r5': 1} | True | True | `movq	(%r9), %rdx; movq	(%r12,%rdx), %r11` |
| 4 | {'gen_slot_r5': 1, 'train_v1_slot': 3} | True | False | `movl	-24(%rip), %r11d; cmpq	%r11, -8(%rbp); jnb	.Lgen_spec_end; .Lgen_spec_end:` |
| 4 | {'gen_plain_r0': 2, 'gen_plain_r5': 2} | False | True | `movzbl	(%r12,%r11), %r10d; movb	%r9b, (%r10)` |
| 4 | {'gen_plain_r0': 3, 'gen_plain_r5': 1} | False | False | `movl	(%r8), %esi; cmpl	%edx, %esi; jae	.Lgen_spec_end; .Lgen_spec_end:` |
| 4 | {'gen_plain_r0': 1, 'gen_plain_r5': 3} | False | True | `movq	(%r13), %rsi; movzbl	(%rax,%rsi), %r9d` |
| 4 | {'gen_plain_r0': 2, 'gen_plain_r5': 2} | True | True | `movq	(%rcx), %r8; movzbl	(%r8), %edx` |
| 4 | {'gen_plain_r5': 4} | False | True | `movl	(%r12), %esi; movl	(%rsi), %r10d` |

## Novel generator cores (not in any training window)

- ['gen_slot_r0'] benign=True: `movzbl	(%r9,%rbx), %r10d; movzbl	(%r9,%r10), %r10d`
- ['gen_plain_r0', 'gen_slot_r0'] benign=False: `movzbl	(%rbx,%rax), %edx; movq	(%rbx,%rdx), %r8`
- ['gen_slot_r0'] benign=False: `movzbl	(%rax,%rbx), %ebx; movq	(%rax,%rbx), %r12`
- ['gen_slot_r0'] benign=False: `movzbl	-16(%rip), %edi; movzbl	(%rdi), %edx`
- ['gen_slot_r0'] benign=False: `movzbl	(%rdi,%r8), %ecx; movslq	%ecx, %r8; movzbl	(%rdi,%r8), %r8d`
- ['gen_slot_r0'] benign=False: `movzbl	(%rbx,%r13), %r13d; movb	(%r13), %r13b`
- ['gen_slot_r0'] benign=False: `movb	-24(%rsi), %al; cmpq	%r11, %rax; jae	.Lgen_spec_end; .Lgen_spec_end:`
- ['gen_slot_r0'] benign=False: `movzbl	(%r8,%rax), %eax; subl	$1, -24(%rax)`
- ['gen_slot_r0'] benign=False: `movzbl	(%rcx,%r8), %r10d; movq	(%r11,%r10), %r10`
- ['gen_slot_r0'] benign=False: `movzbl	(%rax,%r8), %r11d; movzbl	%r11b, %r8d; movzbl	(%rax,%r8), %r11d`
- ['gen_slot_r0'] benign=False: `movzbl	(%r9,%r9), %r9d; movzbl	(%r9), %r9d`
- ['gen_slot_r0', 'gen_slot_r5'] benign=True: `movzbl	(%r9), %r9d; movzbl	(%r13,%r9), %ebx`
- ['gen_slot_r0'] benign=True: `movzbl	(%r12,%rcx), %ecx; movq	(%rbx,%rcx), %rax`
- ['gen_slot_r0', 'gen_slot_r5'] benign=True: `movzbl	(%r9,%r8), %r8d; movzbl	(%r9,%r8), %r11d`
- ['gen_slot_r0'] benign=True: `movzbl	(%rdi,%r13), %esi; movslq	%esi, %r13; movzbl	(%rdi,%r13), %r10d`
- ['gen_slot_r0'] benign=False: `movzbl	(%r10,%r11), %r9d; movb	(%r9,%rcx), %r9b`
- ['gen_slot_r0'] benign=False: `movb	-24(%rdi), %dil; cmpq	%r13, %rdi; jae	.Lgen_spec_end; .Lgen_spec_end:`
- ['gen_slot_r0'] benign=False: `movzbl	(%r10,%r12), %r8d; movb	(%r12,%r8), %r10b`
- ['gen_slot_r0', 'gen_slot_r5'] benign=True: `movzbl	(%r13,%r8), %r13d; movzbl	(%r13,%r8), %r9d`
- ['gen_slot_r0', 'gen_slot_r5'] benign=False: `movzbl	(%rdi,%r9), %r8d; movq	(%r9,%r8), %r13`
- ['gen_slot_r5'] benign=False: `movb	(%rdi,%rax), %dil; movb	(%rdi), %dil`
- ['gen_slot_r5'] benign=False: `movzbl	(%rdx,%rdx), %esi; movq	(%r12,%rsi), %rdi`
- ['gen_slot_r5'] benign=False: `movl	(%r8), %r8d; movq	(%r8,%r8), %r8`
- ['gen_plain_r5', 'gen_slot_r5'] benign=True: `movzbl	(%r12,%r8), %r11d; movzbl	(%r12,%r11), %edi`
- ['gen_slot_r5'] benign=False: `movzbl	(%rbx,%r13), %ebx; movb	-24(%rbx), %bl`
- ['gen_slot_r5'] benign=False: `movq	-32(%rip), %rsi; cmpq	%rsi, %rdx; jae	.Lgen_spec_end; .Lgen_spec_end:`
- ['gen_slot_r5'] benign=False: `movzbl	(%rcx,%rcx), %ecx; movq	(%rcx,%r12), %rsi`
- ['gen_plain_r5', 'gen_slot_r5'] benign=True: `movzbl	(%rax,%rsi), %r13d; movzbl	(%rbx,%r13), %r8d`
- ['gen_slot_r5'] benign=True: `movl	-16(%rip), %edi; movzbl	(%rdi,%rdx), %edx`
- ['gen_slot_r5'] benign=False: `movzbl	(%r10,%r12), %ebx; movslq	%ebx, %r12; movb	(%r10,%r12), %bl`
- ['gen_slot_r5'] benign=False: `movq	-32(%rip), %rdi; movzbl	(%rdi,%rdi), %r11d`
- ['gen_slot_r5'] benign=False: `movq	-8(%rip), %rcx; movb	(%rcx,%rax), %bl`
- ['gen_slot_r5'] benign=False: `movzbl	-32(%rip), %r12d; movb	(%rsi,%r12), %r12b`
- ['gen_plain_r0'] benign=False: `movzbl	(%r9,%rax), %r8d; cmpq	%r8, %r12; jae	.Lgen_spec_end; .Lgen_spec_end:`
- ['gen_plain_r0', 'gen_plain_r5'] benign=True: `movzbl	(%r12,%r11), %r10d; movb	%r9b, (%r10)`
- ['gen_plain_r0'] benign=False: `movl	(%r12), %r13d; andb	%al, (%r13)`
- ['gen_plain_r0', 'gen_plain_r5'] benign=True: `movl	(%rsi), %r12d; movq	(%r12), %r13`
- ['gen_plain_r0'] benign=False: `movl	(%r12), %ebx; movq	(%rbx,%rsi), %r9`
- ['gen_plain_r0', 'gen_plain_r5'] benign=False: `movl	(%r8), %esi; cmpl	%edx, %esi; jae	.Lgen_spec_end; .Lgen_spec_end:`
- ['gen_plain_r0'] benign=True: `cmpq	%r9, (%rcx); jnb	.Lgen_spec_end; .Lgen_spec_end:`
- ['gen_plain_r0', 'gen_plain_r5'] benign=False: `movq	(%rsi), %rdx; cmpl	%edx, %r8d; jae	.Lgen_spec_end; .Lgen_spec_end:`
- ['gen_plain_r0'] benign=False: `movq	(%rcx), %r10; movzbl	(%r10,%rcx), %esi`
- ['gen_plain_r0', 'gen_plain_r5'] benign=True: `movq	(%rdi), %rcx; movzbl	(%rcx,%rdx), %r8d`
- ['gen_plain_r0'] benign=False: `movl	(%rbx), %r13d; movb	(%r13,%r12), %sil`
- ['gen_plain_r0', 'gen_plain_r5'] benign=True: `movzbl	(%r10,%rdi), %r13d; movzbl	(%r13,%rbx), %eax`
- ['gen_plain_r0', 'gen_plain_r5'] benign=False: `cmpl	(%r12), %eax; jae	.Lgen_spec_end; .Lgen_spec_end:`
- ['gen_plain_r0'] benign=True: `cmpb	%r9b, (%r11); jne	.Lgen_spec_end; .Lgen_spec_end:`
- ['gen_plain_r0', 'gen_plain_r5'] benign=True: `movl	(%r13), %ebx; movzbl	(%rbx), %ecx`
- ['gen_plain_r0'] benign=False: `movzbl	(%r10,%r8), %r13d; movzbl	(%r8,%r13), %edx`
- ['gen_plain_r0'] benign=False: `movzbl	(%r13,%r10), %ecx; cmpl	(%rcx), %edx`
- ['gen_plain_r0'] benign=False: `movzbl	(%r11), %ebx; movb	(%rbx), %r10b`
- ['gen_plain_r0'] benign=True: `movzbl	(%rdi), %ecx; andl	%ecx, %r13d; movb	%r8b, (%r13)`
- ['gen_plain_r0'] benign=True: `movq	(%rbx), %r10; movl	%r11d, (%r10)`
- ['gen_plain_r0', 'gen_plain_r5'] benign=True: `movzbl	(%r12), %r9d; movb	%sil, (%r9)`
- ['gen_plain_r0'] benign=True: `cmpq	(%rdx), %rcx; jb	.Lgen_spec_end; .Lgen_spec_end:`
- ['gen_plain_r0'] benign=True: `movq	(%rax), %rbx; movq	(%rbx,%r10), %rdi`
- ['gen_plain_r0'] benign=True: `movl	(%rcx), %r9d; movl	%ebx, (%r9)`
- ['gen_plain_r0', 'gen_plain_r5'] benign=True: `movq	(%rcx), %r11; movl	(%r11), %r8d`
- ['gen_plain_r0', 'gen_plain_r5'] benign=True: `movq	(%r13), %rsi; movzbl	(%rax,%rsi), %r9d`
- ['gen_plain_r0'] benign=False: `movq	(%r8,%rbx), %rcx; movzbl	(%r9,%rcx), %edx`
- ['gen_plain_r0'] benign=False: `movzbl	(%rsi,%r11), %r8d; movb	(%r8,%rsi), %dil`
- ['gen_plain_r0'] benign=False: `movzbl	(%r13), %ebx; movb	%bl, %r13b; movb	%bl, (%r13)`
- ['gen_plain_r0'] benign=False: `movzbl	(%rsi,%r8), %r10d; andl	%r10d, %r9d; movb	%bl, (%r9)`
- ['gen_plain_r0'] benign=False: `movl	(%rbx), %r13d; movb	(%r8,%r13), %r9b`
- ['gen_plain_r0'] benign=False: `movq	(%r11), %r8; cmpl	%eax, %r8d; jae	.Lgen_spec_end; .Lgen_spec_end:`
- ['gen_plain_r0'] benign=True: `movzbl	(%rsi,%r8), %ebx; movzbl	(%rbx,%r8), %r11d`
- ['gen_plain_r0'] benign=True: `movzbl	(%r10,%rcx), %edi; cmpq	%rdi, %rsi; je	.Lgen_spec_end; .Lgen_spec_end:`
- ['gen_plain_r5'] benign=True: `movzbl	(%r11,%rdx), %edi; movzbl	(%rdi), %r8d`
- ['gen_plain_r5'] benign=False: `movb	(%r11), %dil; cmpq	%rbx, %rdi; jae	.Lgen_spec_end; .Lgen_spec_end:`
- ['gen_plain_r5'] benign=True: `movzbl	(%r10,%r13), %edi; movb	%r13b, (%rdi)`
- ['gen_plain_r5'] benign=True: `movl	(%rcx), %r8d; movl	%r8d, %r9d; movq	(%r9), %rcx`
- ['gen_plain_r5'] benign=False: `movb	(%r13,%rdi), %r8b; movb	(%r8,%rdx), %r10b`
- ['gen_plain_r5'] benign=True: `movl	(%r12), %esi; movl	(%rsi), %r10d`
- ['gen_plain_r5'] benign=False: `subq	(%r9), %rcx; movq	(%rcx), %r11`
- ['gen_plain_r5'] benign=False: `movzbl	(%r12,%rsi), %r13d; movslq	%r13d, %r12; movzbl	(%r10,%r12), %r8d`
- ['gen_plain_r5'] benign=False: `movq	(%rdi), %r12; movb	(%r12), %bl`
- ['gen_plain_r5'] benign=True: `movl	(%r8), %edx; movq	(%rdi,%rdx), %rax`
- ['gen_plain_r5'] benign=False: `cmpb	$256, (%r11); jne	.Lgen_spec_end; .Lgen_spec_end:`
- ['gen_plain_r5'] benign=False: `movslq	(%rdx), %r9; movb	(%r9), %r12b`
- ['gen_plain_r5'] benign=True: `movq	(%rbx), %r13; movb	%bl, (%r13)`
- ['gen_plain_r5'] benign=True: `movl	(%rsi), %edx; movzbl	(%rdx), %esi`
- ['gen_plain_r5'] benign=True: `movl	(%rdx), %edi; movzbl	(%rdi,%rdx), %ecx`
- ['gen_plain_r5'] benign=True: `movzbl	(%r11,%rsi), %edi; movzbl	(%rdi), %esi`
- ['gen_plain_r5'] benign=True: `movzbl	(%rax,%r13), %r11d; movzbl	(%r11), %eax`
- ['gen_plain_r5'] benign=False: `movb	(%r10,%r11), %sil; movq	(%rsi), %r12`
- ['gen_plain_r5'] benign=False: `movslq	(%r13), %rdi; movq	%r8, (%rdi)`
- ['gen_plain_r5'] benign=False: `movl	(%r10), %r9d; cmpq	%r9, %rdx; jae	.Lgen_spec_end; .Lgen_spec_end:`
