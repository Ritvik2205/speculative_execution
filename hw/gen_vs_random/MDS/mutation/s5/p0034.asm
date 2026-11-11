.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno di, cx
cmovnz edx, ecx
or al, bl
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
test cl, 91
xor dl, dl
and rsi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 1
test bx, di
cmovle ebx, esi
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], -22
btr di, 89
xor rax, -91
or di, 0b1000000000000000 # instrumentation
bsr di, di
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
btr bx, 100
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
cmovo edi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
