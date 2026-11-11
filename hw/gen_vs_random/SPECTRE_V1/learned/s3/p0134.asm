.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
sbb cl, bl
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
adc edi, 82
sbb dl, dl
xor al, -119
jp .bb_0.2
jmp .exit_0
.bb_0.2:
sbb eax, 1332762061
mov al, 7
add al, dl
adc dl, 107
xor bl, -38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
