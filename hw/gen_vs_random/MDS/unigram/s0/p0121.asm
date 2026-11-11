.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ebx
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], esi
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 62
and cl, 57 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
xor edx, 17
xor bl, al
jmp .bb_0.1
.bb_0.1:
test rbx, 94
cmovle cx, di
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rax]
xor dil, -124
btr rsi, 146
xor dil, 8
and rax, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rax]
cmovo rdx, rcx
and rcx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], di
cmovnz esi, edx
cmovz ebx, ecx
or dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
