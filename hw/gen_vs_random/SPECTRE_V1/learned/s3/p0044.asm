.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 1276549484
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
sub dil, al
and rsi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rsi], 9
and rbx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rbx]
test ax, -30637
test esi, 76
jns .bb_0.1
jmp .exit_0
.bb_0.1:
sub rcx, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
