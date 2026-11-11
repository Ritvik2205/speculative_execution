.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, dil
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
xchg ebx, edi
sub dil, -39
or ax, -10161
not sil
jmp .bb_0.1
.bb_0.1:
or dx, ax
test cl, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
