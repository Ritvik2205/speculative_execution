.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 5
test cl, 92
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -98
sub al, -75
jmp .bb_0.1
.bb_0.1:
adc si, 29
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 20
or cl, sil
and rbx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rbx]
and rsi, 19
sbb bl, -88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
