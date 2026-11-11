# Minimal cores of attacker-dependent leaks, tainted victim

113 leaks picked (≤40 per source, kind=indexed), 113 reproduced and minimised. 1-minimal ddmin, Spectector as the test; each core re-checked on `tainted_ctl`.

| source | cores | body median | core median | core min-max | core size 1/2/3/4/5+ | distinct cores | core safe on control |
|---|---|---|---|---|---|---|---|
| t1:benign_raw | 21 | 25 | 3 | 2-4 | 0/10/10/1/0 | 18 | 21/21 |
| t1:benign_slot | 24 | 25 | 2 | 2-4 | 0/13/7/4/0 | 22 | 24/24 |
| t1:benign_slot_jcc | 40 | 28 | 4 | 2-6 | 0/9/6/21/4 | 34 | 40/40 |
| t1:gen:generator_indexed | 15 | 26 | 4 | 2-6 | 0/4/0/9/2 | 15 | 15/15 |
| t1:gen:generator_indexed_v3 | 12 | 33 | 4 | 2-5 | 0/4/1/6/1 | 12 | 12/12 |
| t1:reference | 1 | 3 | 2 | 2-2 | 0/1/0/0/0 | 1 | 1/1 |

## Most frequent core templates

| count | sources | example core |
|---|---|---|
| 5 | {'t1:benign_raw': 2, 't1:benign_slot': 2, 't1:benign_slot_jcc': 1} | `movq	16(%r15), %rsi; movb	%dl, (%rsi,%rcx)` |
| 5 | {'t1:gen:generator_indexed': 2, 't1:gen:generator_indexed_v3': 3} | `movq	%r15, -8(%rip); movq	-8(%rip), %rax; movzbl	(%rax,%r8), %r9d; movq	(%rcx,%r9), %r10` |
| 5 | {'t1:gen:generator_indexed': 2, 't1:gen:generator_indexed_v3': 3} | `movzbl	(%r8,%r15), %edx; movq	(%r8,%rdx), %rdx` |
| 4 | {'t1:benign_raw': 2, 't1:benign_slot': 2} | `movq	%r15, %rbx; movq	112(%rbx), %rax; movb	$0, 0(%r13,%rax)` |
| 3 | {'t1:benign_raw': 2, 't1:benign_slot': 1} | `movq	32(%r15), %rax; movq	%rax, %rcx; movw	%ax, (%rcx,%r8,2)` |
| 3 | {'t1:benign_raw': 1, 't1:benign_slot': 2} | `movq	(%r15), %rdx; movb	$0, (%rdx,%rax)` |
| 3 | {'t1:benign_raw': 1, 't1:benign_slot': 2} | `movq	96(%r15), %r10; movzbl	(%r10,%rdx), %esi` |
| 3 | {'t1:benign_slot': 1, 't1:benign_slot_jcc': 2} | `movq	-8(%r15), %rsi; movq	-48(%rsi), %rcx` |
| 3 | {'t1:benign_slot_jcc': 2, 't1:gen:generator_indexed_v3': 1} | `cmpl	$-4, -8(%r15); je	.Lgen_spec_end; .Lgen_spec_end:` |
| 3 | {'t1:benign_slot_jcc': 3} | `movl	-64(%r15), %r9d; testl	%r9d, %r9d; jne	.Lgen_spec_end; .Lgen_spec_end:` |
| 3 | {'t1:benign_slot_jcc': 3} | `movq	-8(%r15), %r15; testq	%r15, %r15; jne	.Lgen_spec_end; .Lgen_spec_end:` |
| 2 | {'t1:benign_raw': 1, 't1:benign_slot': 1} | `addq	80(%r15), %rbx; movzwl	(%rbx), %eax` |
| 2 | {'t1:benign_raw': 1, 't1:benign_slot': 1} | `movq %r15, 40(%rsp); movq	40(%rsp), %rax; movq	56(%rax), %rax; movq	16(%rax), %rsi` |
| 2 | {'t1:benign_raw': 1, 't1:benign_slot': 1} | `movzwl	(%r15), %edx; movslq	%edx, %r8; addw	%di, 2748(%rcx,%r8,4)` |
| 2 | {'t1:benign_raw': 1, 't1:benign_slot': 1} | `movq	24(%r15), %rdx; movq	(%rdx,%rax,8), %rdi` |
