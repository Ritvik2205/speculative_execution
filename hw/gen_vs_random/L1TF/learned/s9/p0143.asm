.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 84
cmovb cx, bx
lea rdi, qword ptr [rdx + rax]
sub dil, -39
movsx rdi, cx
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], dx
jmp .bb_0.1
.bb_0.1:
test dl, 84
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
