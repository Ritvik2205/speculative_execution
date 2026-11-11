.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
lea ax, qword ptr [rbx + rdi]
adc al, -82
add sil, 2
and sil, 11
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
sbb cl, sil
and cl, 86
and cl, al
and rdx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rdx]
and cl, dil
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
