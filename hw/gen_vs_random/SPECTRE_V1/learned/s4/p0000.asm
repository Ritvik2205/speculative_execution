.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ebx, esi
adc dx, -112
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], bl
dec cl
adc sil, sil
cmp cl, al
sub cl, bl
jl .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
