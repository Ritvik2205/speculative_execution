.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 113
and dil, -114
sub dil, -111
cmp bl, al
and dil, -114
jmp .bb_0.1
.bb_0.1:
cmp cx, 19
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 73
lea ecx, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
