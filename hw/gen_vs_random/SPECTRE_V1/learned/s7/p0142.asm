.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -103 # instrumentation
cmovbe cx, cx
lea rdx, qword ptr [rbx + rax + 25]
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
add dl, sil
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
sub al, sil
sub cl, -47
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
