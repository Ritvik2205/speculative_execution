.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 29
and bl, al
xor cl, 89
adc al, cl
cmp al, bl
jmp .bb_0.1
.bb_0.1:
add bl, 89 # instrumentation
sbb dl, cl
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rbx
cmp ax, 7046
btc bx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
