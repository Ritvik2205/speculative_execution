.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], ax
cmovnle rsi, rdx
test bl, -8
lea ebx, qword ptr [rdx]
jmp .bb_0.1
.bb_0.1:
test cl, -33
sub rsi, 97
sbb cl, al
setns dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
