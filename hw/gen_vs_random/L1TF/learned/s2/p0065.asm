.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
test cl, 93
sbb dil, 51
xor dx, 1
inc dil
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], esi
jmp .bb_0.1
.bb_0.1:
cmp rbx, 100
test dl, 84
jp .bb_0.2
jmp .exit_0
.bb_0.2:
adc al, dil
or bx, 90
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
sbb dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
