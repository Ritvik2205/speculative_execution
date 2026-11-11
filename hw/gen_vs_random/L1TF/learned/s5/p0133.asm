.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -103 # instrumentation
cmovbe bx, bx
and rsi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rsi]
lea rdx, qword ptr [rbx + rsi]
btc cx, ax
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
sub rax, -15
and di, 100
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
