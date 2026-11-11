.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dil
test dl, bl
test al, dl
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 100
jmp .bb_0.1
.bb_0.1:
test dil, -126
bt rsi, rcx
test dil, -126
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
or rbx, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
