.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, dl
sbb al, dil
add al, 10
and al, -23
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 56
test sil, -31
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
cmp cl, sil
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], sil
sub cl, -21
sbb cl, 105
xor cl, dil
adc cl, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
