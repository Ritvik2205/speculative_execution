.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 72
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], 70
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb edx, 105
and dil, -114
jnz .bb_0.2
jmp .bb_0.3
.bb_0.2:
jp .bb_0.3
jmp .exit_0
.bb_0.3:
lea ax, qword ptr [rsi]
add bl, 70
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
add ebx, -116
sub al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
