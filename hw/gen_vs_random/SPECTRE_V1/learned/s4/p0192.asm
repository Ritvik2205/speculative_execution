.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dil
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 95
sub al, cl
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rdi
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
or edx, 81
sbb eax, 2098460225
jns .bb_0.3
jmp .exit_0
.bb_0.3:
sbb dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
