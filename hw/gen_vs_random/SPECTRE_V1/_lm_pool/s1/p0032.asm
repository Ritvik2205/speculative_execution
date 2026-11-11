.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 44
test bl, -8
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], al
add bl, 70
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
mov dl, al
and dil, -93
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
