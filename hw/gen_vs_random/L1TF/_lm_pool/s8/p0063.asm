.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
not sil
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
sub dl, cl
add cl, 88
jmp .bb_0.1
.bb_0.1:
test al, -56
lea ax, qword ptr [rdx]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -57
and cx, -79
and rdi, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
