.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 84
and ax, 26813
sub dl, 105
and rdi, 100
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
cmp cx, 16
and rbx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rbx]
add dil, 88
sub cl, -49
cmovnle rdx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
