.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -36 # instrumentation
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], ecx
lea ax, qword ptr [rbx]
and di, 66
add al, -80
jmp .bb_0.1
.bb_0.1:
sub cl, dil
and rsi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
