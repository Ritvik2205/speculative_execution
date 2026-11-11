.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -37
and rcx, rdi
jmp .bb_0.1
.bb_0.1:
test al, -82
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 0
add bl, al
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], cl
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 124
test dl, -37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
