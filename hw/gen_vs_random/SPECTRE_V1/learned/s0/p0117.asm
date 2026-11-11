.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, cl
adc dil, 17
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
mov dl, bl
add ax, 8031
jmp .bb_0.1
.bb_0.1:
and al, -23
add al, dil
sbb dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
