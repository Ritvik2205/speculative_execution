.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], -108
jp .bb_0.1
jmp .exit_0
.bb_0.1:
xor cl, -91
or al, 19
sub bl, sil
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
test dx, 48
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 56
adc ax, 24404
cmp bl, sil
sub dil, -111
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
