.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, ecx
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
lea ecx, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
sbb bl, -88
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -32
jmp .bb_0.1
.bb_0.1:
and ax, 37
add dil, 88
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
