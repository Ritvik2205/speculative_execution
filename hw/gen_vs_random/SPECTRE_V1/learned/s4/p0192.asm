.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -127
sub rax, rbx
add al, -65
and rbx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rbx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
sbb eax, 1392087754
test cl, -62
add dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
