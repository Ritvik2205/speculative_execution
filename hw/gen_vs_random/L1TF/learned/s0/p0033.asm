.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 96
lea esi, qword ptr [rax + rcx + 8]
sub rax, 1715032616
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 7
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dil
jmp .bb_0.3
.bb_0.3:
test ax, 13284
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
