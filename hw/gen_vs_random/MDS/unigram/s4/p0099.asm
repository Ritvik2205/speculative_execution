.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and dl, 84 # instrumentation
cmovl rcx, rbx
and cl, -44 # instrumentation
cmovno rsi, rcx
and cl, 51 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], ax
and dx, 60
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rcx]
test bx, 4954
and dil, -62
and rax, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rax]
and ax, 13090
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], cx
bts rsi, 221
test cl, 91
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
