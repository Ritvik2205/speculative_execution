.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -18
xor ax, 24729
cmp ax, 20
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rdx], si
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, ecx
dec rcx
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
cmovnb si, bx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rcx
cmovnl esi, ecx
jmp .bb_0.2
.bb_0.2:
btc cx, 104
bt rdi, rdi
sbb ax, 5
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 89
and sil, 65
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 52
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rdi
add dl, dil
cmovz cx, dx
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
