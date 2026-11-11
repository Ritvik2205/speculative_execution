.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, -118
test al, cl
adc dl, 107
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
adc ax, -614
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -127
and rax, -1128038253
sub dil, -111
and rdx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdx]
xor cx, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
