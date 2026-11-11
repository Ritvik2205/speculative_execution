.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], 12
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
add ax, 8031
sbb bl, 79
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
add ax, 6656
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
adc ecx, 94
sbb rsi, 26
sub al, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
