.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
xor di, 33
or al, -57
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
jp .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
