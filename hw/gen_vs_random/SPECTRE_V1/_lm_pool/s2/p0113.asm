.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, dil
xor bl, -38
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
adc al, -82
and rdi, 75
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
adc ax, ax
sub al, bl
test al, 34
not eax
xor ecx, 35
lea rdi, qword ptr [rsi + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
