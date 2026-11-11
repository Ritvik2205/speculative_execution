.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
sbb cl, bl
jmp .bb_0.1
.bb_0.1:
and dil, dil
sbb dl, dl
xor al, 45
jp .bb_0.2
jmp .exit_0
.bb_0.2:
lea rdx, qword ptr [rdi + rax]
mov al, -101
add sil, dl
adc dl, -12
xor bl, -5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
