.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, dil
jle .bb_0.1
jmp .exit_0
.bb_0.1:
add dil, -75
or eax, -1641258390
test dil, -116
adc bl, 102
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdi]
or si, 0b1000000000000000 # instrumentation
bsf bx, si
mov bl, dl
add bl, bl
or ax, 19104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
