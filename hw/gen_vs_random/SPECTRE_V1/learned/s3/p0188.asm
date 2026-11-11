.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rax, 1189904463
add cl, sil
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub dl, -48
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
xchg rbx, rsi
jl .bb_0.2
jmp .exit_0
.bb_0.2:
sub al, 63
sbb cl, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
