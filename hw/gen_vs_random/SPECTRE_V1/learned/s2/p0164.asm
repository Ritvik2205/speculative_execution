.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, 71
cmp rsi, 53
cmp rax, -72548874
or dx, 0b1000000000000000 # instrumentation
bsf si, dx
add cl, dil
sub dl, al
jnp .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
