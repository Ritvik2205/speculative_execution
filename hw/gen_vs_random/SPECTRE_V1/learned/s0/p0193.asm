.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, cl
add al, -13
xor bl, sil
cmp al, 62
and al, dil
mov al, sil
cmp ax, 7046
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 97
cmp bl, cl
and dl, bl
adc edi, 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
