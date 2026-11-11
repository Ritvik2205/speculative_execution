.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rsi]
or eax, 848176907
and rdi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdi]
sbb al, dil
sub rcx, 13
lea rbx, qword ptr [rdx + rax + 42]
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
mov dil, bl
and bx, -118
sub al, -89
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
