.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle ebx, esi
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
cmovno di, cx
and rsi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rsi]
cmovo edi, edx
cmovnz edx, ecx
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 1
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
or di, 0b1000000000000000 # instrumentation
bsr di, di
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
test bx, di
xor rax, -345061362
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
or al, bl
test cl, 91
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], -86
btr di, 89
btr bx, 74
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
xor dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
