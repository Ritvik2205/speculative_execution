.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -47
sub ax, bx
add dil, 105
adc bl, dil
or bl, -35
add dl, cl
adc cl, sil
cmp rax, 1682181214
sub al, 55
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], al
cmp bl, 12
adc dl, dil
add dl, sil
add al, sil
mov dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
