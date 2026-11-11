.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 21 # instrumentation
adc ax, 32514
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 25
and dl, dil
xchg al, dil
btc edi, 78
and cl, cl
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and dil, 98
add ebx, -116
sub dl, -48
sbb dl, 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
