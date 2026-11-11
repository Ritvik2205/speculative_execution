.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
test al, -71
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], al
and bl, 124
test rsi, -1408527332
and bl, -43
jmp .bb_0.1
.bb_0.1:
jp .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
