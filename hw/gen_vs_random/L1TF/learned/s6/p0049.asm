.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
btc ax, bx
jmp .bb_0.1
.bb_0.1:
sub cl, -49
test ax, 22956
or rax, 1362710293
jmp .bb_0.2
.bb_0.2:
xor bl, -5
jmp .bb_0.3
.bb_0.3:
jl .bb_0.4
jmp .exit_0
.bb_0.4:
xor bl, dil
cmp ax, 24210
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
