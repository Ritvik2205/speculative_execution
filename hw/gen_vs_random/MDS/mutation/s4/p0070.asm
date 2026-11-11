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
lock btc word ptr [r14 + rsi], 5
test cl, 62
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
btr di, 89
btr bx, 74
test bx, di
cmovle ebx, esi
xor dl, dl
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
or al, bl
xor rax, -843636050
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
jmp .bb_0.1
.bb_0.1:
and cl, 49 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rsi]
test edi, eax
and rsi, rsi
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
or al, al
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 30
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
btc dx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
