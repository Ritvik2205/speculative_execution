.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 14
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
sub cl, -49
cmovb ax, bx
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], dil
sub al, -3
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 112
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
or dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
