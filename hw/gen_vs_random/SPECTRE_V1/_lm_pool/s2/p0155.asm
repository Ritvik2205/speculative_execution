.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], -32
add al, 10
sub rdi, 13
adc si, 6
and al, -54
add cl, dil
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
or cl, al
jnp .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
