.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 35
add rax, 977059290
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
and dil, -114
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
