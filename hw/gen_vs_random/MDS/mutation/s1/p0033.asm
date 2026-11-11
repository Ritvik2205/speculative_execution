.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
xor dl, dl
btr di, 89
test cl, 91
cmovle ebx, esi
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
cmovnz edx, ecx
xor rax, -91
btr bx, 100
or di, 0b1000000000000000 # instrumentation
bsr di, di
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
cmovo edi, edx
cmovno di, cx
test bx, di
or al, bl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 62
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 1
and rsi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
