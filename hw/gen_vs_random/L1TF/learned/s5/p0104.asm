.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 29
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rax
and rbx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rbx]
btc ax, bx
xor sil, cl
lea bx, qword ptr [rcx]
jmp .bb_0.1
.bb_0.1:
add cx, 59
lea cx, qword ptr [rdx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
