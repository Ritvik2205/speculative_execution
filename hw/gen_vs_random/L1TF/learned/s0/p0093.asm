.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 16
not cl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 43
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], esi
btc ax, dx
xor cl, bl
jmp .bb_0.3
.bb_0.3:
lea rcx, qword ptr [rbx + rsi]
test cl, 66
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], -61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
