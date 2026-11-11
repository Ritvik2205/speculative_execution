.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, cl
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -4
or ax, 85
btr rsi, 146
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
xor dil, 124
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
not al
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 125
jmp .bb_0.1
.bb_0.1:
test cl, bl
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rsi
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
and ax, 19224
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
btc rcx, rsi
and dl, dl
not rsi
jmp .bb_0.2
.bb_0.2:
btc edi, eax
and bl, -15 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rbx]
and edx, -44
and ax, 339
or esi, esi
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
btc edi, 230
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], -22
not dil
and rdx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
