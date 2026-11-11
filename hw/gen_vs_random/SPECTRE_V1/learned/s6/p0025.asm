.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 5
lea rax, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
sbb al, -14
and rbx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rbx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dil
sub rdx, 51
sbb cl, cl
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
