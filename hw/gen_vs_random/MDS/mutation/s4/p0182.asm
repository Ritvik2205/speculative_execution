.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, bl
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
cmovle ebx, esi
btr bx, 100
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
xor rax, -404206377
and rsi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rsi]
test cl, -113
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 62
test bx, di
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
cmovnz edx, ecx
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 1
cmovo edi, edx
cmovno di, cx
xor dl, dl
btr di, 89
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
or di, 0b1000000000000000 # instrumentation
bsr di, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
