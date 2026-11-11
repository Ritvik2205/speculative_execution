.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 36
sub sil, cl
adc cl, -19
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
test cl, -24
cmp al, 23
sub dil, sil
movsx rax, di
cmp al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
