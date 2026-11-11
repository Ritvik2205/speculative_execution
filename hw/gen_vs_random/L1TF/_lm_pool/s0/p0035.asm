.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rbx
jmp .bb_0.2
.bb_0.2:
test dil, -126
or ax, -10161
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
test al, 15
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
sbb bl, dil
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
lea rax, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
