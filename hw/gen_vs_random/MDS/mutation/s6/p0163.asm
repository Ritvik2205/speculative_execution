.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, di
cmovo edi, edx
test cl, 62
xor dl, dl
xor rax, -1128378406
cmovno di, cx
btr bx, 188
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
cmovle ebx, esi
or al, bl
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 1
or di, 0b1000000000000000 # instrumentation
bsr di, di
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], -86
and rsi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
cmovnz edx, ecx
btr di, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
