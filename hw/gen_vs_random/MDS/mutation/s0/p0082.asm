.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], -86
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
xor dl, dl
or di, 0b1000000000000000 # instrumentation
bsr di, di
xor rax, -1128378406
btr bx, 100
test bx, di
or al, bl
cmovno di, cx
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 5
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
btr di, 89
cmovle ebx, esi
cmovo edi, edx
and rsi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
cmovnz edx, ecx
test cl, -123
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
