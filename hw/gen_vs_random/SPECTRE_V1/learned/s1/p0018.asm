.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
sbb edi, 51
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 32
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jle .bb_0.2
jmp .exit_0
.bb_0.2:
sbb cl, sil
and rax, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rax]
add dil, dil
js .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
