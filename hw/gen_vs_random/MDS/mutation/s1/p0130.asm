.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo edi, edx
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rsi]
btr bx, 188
or di, 0b1000000000000000 # instrumentation
bsr di, di
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
xor rax, -1499464454
test bx, di
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
btr di, 89
test cl, 91
xor dl, dl
or al, bl
cmovnz edx, ecx
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], -22
cmovno di, cx
cmovle ebx, esi
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
