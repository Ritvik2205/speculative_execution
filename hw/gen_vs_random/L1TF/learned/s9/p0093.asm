.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 7954
add rdx, 29
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
and rax, 1163013815
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 7
or rcx, 66
jmp .bb_0.2
.bb_0.2:
cmp cx, 15
jmp .bb_0.3
.bb_0.3:
test sil, 29
sub bx, 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
