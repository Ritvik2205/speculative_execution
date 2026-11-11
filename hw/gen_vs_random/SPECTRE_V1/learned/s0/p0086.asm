.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -98 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rbx]
mov dil, 53
sbb ebx, 56
test al, -99
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
sbb rax, 1161375577
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rdi
sub rax, -1628299544
lea rsi, qword ptr [rcx + rax + 91]
bt edi, 121
lea edi, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
