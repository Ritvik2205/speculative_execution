.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, edi
add cl, sil
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
sbb al, dl
test dil, -116
jp .bb_0.2
jmp .exit_0
.bb_0.2:
mov dl, cl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
mov bl, dl
cmp cl, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
