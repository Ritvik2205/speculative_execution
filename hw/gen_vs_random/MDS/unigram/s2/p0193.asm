.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor edi, 13
cmovbe di, si
and rdi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 40
not al
and rdi, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ecx
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
btc rcx, 37
and cx, -2
btr ax, 193
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 105
xor ebx, eax
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rsi], si
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 1
cmovz rdx, rax
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rdx, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rdx]
test di, si
and cl, 7 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
