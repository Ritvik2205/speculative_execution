.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 29
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
sub al, 9
jmp .bb_0.1
.bb_0.1:
sub cl, -49
add dil, 88
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
jmp .bb_0.3
.bb_0.3:
xor di, 93
add edi, 85
add dl, bl
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
