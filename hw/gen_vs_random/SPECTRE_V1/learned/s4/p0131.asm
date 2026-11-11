.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 72
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], -46
and rsi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rsi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdi], 11
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
sbb cl, dl
sbb bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
