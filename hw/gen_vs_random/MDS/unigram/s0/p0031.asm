.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts di, dx
btc eax, 40
or dil, cl
or dx, 125
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
and dil, -27 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rcx]
btc bx, cx
and dl, 113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rbx]
and cl, 8 # instrumentation
cmovz rsi, rcx
cmovnp rsi, rdi
jmp .bb_0.1
.bb_0.1:
cmovnb rdi, rcx
and rdi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], ebx
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdx]
and dil, -67 # instrumentation
cmovnle rdx, rdi
and edi, 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
