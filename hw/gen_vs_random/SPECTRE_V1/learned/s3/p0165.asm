.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 71
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub si, 32
adc bl, cl
cmp al, 23
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
sbb al, -107
mov dl, al
mov bl, cl
neg sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
