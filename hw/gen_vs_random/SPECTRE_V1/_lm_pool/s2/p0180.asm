.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rbx]
sbb dl, 127
sbb al, 49
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], cl
add ax, 6980
test cl, -62
lea dx, qword ptr [rbx + rsi + 3]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rbx]
lea ax, qword ptr [rbx]
sbb bl, al
sub cl, dil
mul al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
