.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, cl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and bl, -43
cmp bl, dil
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
sbb bl, al
xchg bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
