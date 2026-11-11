.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ecx
test dl, -7
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 18
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
btr si, bx
cmp bx, 61
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, cl
cmp cl, al
sbb cl, bl
xor al, dl
sbb al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
