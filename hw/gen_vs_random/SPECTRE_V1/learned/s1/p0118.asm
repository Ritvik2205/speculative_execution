.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
cmp rax, -1365488374
movzx bx, al
or di, -85
dec dl
dec dil
jns .bb_0.1
jmp .exit_0
.bb_0.1:
adc dx, -112
add dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
