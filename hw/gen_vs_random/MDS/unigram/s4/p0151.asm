.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 36
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
btc esi, 226
xor cx, 97
and bl, -55 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rbx]
bt rdx, rdi
cmovnb cx, di
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rdi], cx
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rax], di
and rax, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 66
or cl, sil
and rbx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rbx]
or dil, sil
and cl, 122 # instrumentation
cmovnb rcx, rbx
cmovz bx, cx
and rdi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 21
cmovno edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
