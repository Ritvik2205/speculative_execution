.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 85
cmp di, -8
mov al, dil
sbb al, -14
adc ax, 17267
cmp bl, dil
and bl, -30
and dil, 8
xor dil, 37
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
mov al, cl
cmp al, 116
cmp al, 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
