.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -95
or cl, bl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 812406526
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
test edx, 79
or cx, 13
and rsi, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
lea rbx, qword ptr [rsi + rdi]
sbb al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
