.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, bx
test edx, 62
or dl, 41
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rax]
and dl, -92
add al, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
