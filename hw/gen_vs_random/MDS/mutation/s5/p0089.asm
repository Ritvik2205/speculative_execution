.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, 0b1000000000000000 # instrumentation
bsr di, di
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], -22
cmovno di, cx
cmovnz edx, ecx
and rsi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rsi]
cmovo edi, edx
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 1
test cl, -86
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
btr di, 89
btr bx, 188
test bx, di
cmovle ebx, esi
xor dl, dl
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
or al, bl
xor rax, -1499464454
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
xor cx, -18
cmovnbe bx, dx
xor bl, al
and rdi, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rdi]
test cl, 0
cmovo rdx, rsi
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
not si
and rdi, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
