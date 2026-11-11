.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], dil
btr ax, cx
and rdi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdi]
xor rax, -2072052278
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
lea ax, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
add bl, 68
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], eax
or rbx, 18
test dil, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
