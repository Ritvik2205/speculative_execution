.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rsi]
cmovo edi, edx
xor rax, -404206377
xor dl, dl
btr bx, 74
cmovno di, cx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
or di, 0b1000000000000000 # instrumentation
bsr di, di
cmovnz edx, ecx
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 5
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
test bx, di
or al, bl
cmovle ebx, esi
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 62
btr di, 89
test cl, 62
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
