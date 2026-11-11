.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, -12
sbb dil, -106
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax], 104
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
cmovp bx, di
lea ebx, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], -501175648
and rax, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rax]
setns al
and rsi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rsi]
mov rbx, -8992833348021516010
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
