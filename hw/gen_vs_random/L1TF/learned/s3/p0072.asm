.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 12
or al, -2
test dil, -126
cmovle ax, bx
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdx
and rsi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rsi], 30
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dil
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdi
xchg esi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
