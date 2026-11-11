.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
xor bl, -38
cmp al, dil
and dil, 98
add al, -13
sbb dl, cl
adc al, dl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub dx, -23
adc sil, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
