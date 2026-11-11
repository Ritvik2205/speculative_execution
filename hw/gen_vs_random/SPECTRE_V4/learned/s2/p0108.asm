.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, dl
and dl, cl
test al, 52
or dl, sil
or bl, 61
adc sil, dil
test bl, -16
sub dil, cl
add bl, al
adc al, -117
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
cmp rsi, 22
sbb al, 102
cmp rbx, -91
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
