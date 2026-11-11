.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 86
cmp cl, dl
and rax, 1713273566
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
add sil, -68
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdx]
jb .bb_0.2
jmp .exit_0
.bb_0.2:
and sil, 11
setz bl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -70
adc al, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
