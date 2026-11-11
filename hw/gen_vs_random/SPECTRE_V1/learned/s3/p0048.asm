.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 112 # instrumentation
adc dl, cl
cmp sil, al
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 99
or rax, -1571963467
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp dil, -58
jp .bb_0.2
jmp .exit_0
.bb_0.2:
cmovno ax, si
sub al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
