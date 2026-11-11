.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -92
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], bl
lea rax, qword ptr [rsi]
xchg bl, dil
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
sub dl, sil
cmp sil, cl
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
xchg dl, dil
lea si, qword ptr [rbx]
setb bl
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
