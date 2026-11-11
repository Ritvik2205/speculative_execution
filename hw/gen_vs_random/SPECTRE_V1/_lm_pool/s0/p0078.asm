.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 21
and rsi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rsi]
cmp rax, -1365488374
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rbx]
lea rcx, qword ptr [rbx]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
