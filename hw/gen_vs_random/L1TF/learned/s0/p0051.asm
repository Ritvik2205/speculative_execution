.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 51
and rdx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
xor bl, -5
xor dil, -42
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], al
cmovp di, ax
and rbx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
xor di, 13
and cx, -79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
