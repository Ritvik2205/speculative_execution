.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 21 # instrumentation
adc cx, 97
sub bl, 15
test bx, 18
xor dl, sil
and rbx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rbx]
lea ax, qword ptr [rcx + rbx + 4]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 38
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 78
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
