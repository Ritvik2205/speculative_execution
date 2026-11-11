.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 41
test edx, 7
jp .bb_0.2
jmp .exit_0
.bb_0.2:
test dil, -116
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], sil
lea ax, qword ptr [rbx + rsi + 87]
sub rcx, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
