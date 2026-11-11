.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, bl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rcx]
xchg ebx, edx
sub dil, -39
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
and rax, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
jmp .bb_0.3
.bb_0.3:
or ax, si
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
xor al, 38
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
