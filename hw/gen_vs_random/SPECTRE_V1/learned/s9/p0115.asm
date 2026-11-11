.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx eax, bx
sub al, bl
and rbx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rbx]
setz bl
sbb esi, 22
and rsi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rsi]
sub dl, bl
cmp al, 46
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and bl, -43
xor cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
