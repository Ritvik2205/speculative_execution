.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
cmovle ebx, esi
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
test cl, -18
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 1
cmovo edi, edx
and rsi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rsi]
btr di, 89
cmovnz edx, ecx
or al, bl
test bx, di
or di, 0b1000000000000000 # instrumentation
bsr di, di
cmovno di, cx
btr bx, 100
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 62
xor rax, -773894210
xor dl, dl
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
