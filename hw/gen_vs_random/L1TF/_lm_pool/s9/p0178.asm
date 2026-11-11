.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 44
sub cl, -49
btc ax, bx
xor dil, -42
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], 109
and cl, 70
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
sbb esi, 97
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rbx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
