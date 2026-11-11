.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rcx]
sub al, sil
inc eax
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
sbb al, -107
inc ecx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
test al, 59
and rsi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rsi]
sbb al, -112
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
