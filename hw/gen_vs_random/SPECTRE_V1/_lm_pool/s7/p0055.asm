.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, dil
cmovle bx, ax
sub al, bl
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
xor esi, 106
add dl, dl
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
and cl, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
