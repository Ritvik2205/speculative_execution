.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 80
and rdx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
xor cl, al
and dl, -15 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
xor sil, 110
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], bx
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], di
and bx, 64
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
test si, dx
and rbx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and al, 14
and dl, 60 # instrumentation
cmovnl eax, esi
test dl, al
and di, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
