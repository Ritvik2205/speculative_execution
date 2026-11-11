.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
sub cl, 86
jmp .bb_0.1
.bb_0.1:
test al, -84
btc bx, dx
jmp .bb_0.2
.bb_0.2:
lea rax, qword ptr [rbx + rdx]
bts eax, esi
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
