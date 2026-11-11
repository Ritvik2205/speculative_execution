.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea si, qword ptr [rsi]
test cl, -24
lea ax, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rbx]
xchg rcx, rbx
jl .bb_0.1
jmp .exit_0
.bb_0.1:
sbb al, al
sbb bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
