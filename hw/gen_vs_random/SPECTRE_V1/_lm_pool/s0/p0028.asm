.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 72
sbb al, 33
xor dl, dil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and dl, -92
test al, -99
and rsi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rsi]
and bl, -65
cmp bx, 100
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
