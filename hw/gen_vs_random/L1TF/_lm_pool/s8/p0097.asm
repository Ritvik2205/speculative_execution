.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
cmp rcx, 6
imul bx, cx, 17
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
jmp .bb_0.1
.bb_0.1:
and bl, 32 # instrumentation
cmovnbe ebx, esi
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
