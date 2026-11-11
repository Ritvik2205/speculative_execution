.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdx]
cmovle dx, bx
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], di
and rdi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rdi]
test bx, 4954
and rax, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rax]
btr edi, 221
test bx, 4954
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
cmovns bx, dx
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rax], bx
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and dl, 113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 5
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
test rdi, 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
