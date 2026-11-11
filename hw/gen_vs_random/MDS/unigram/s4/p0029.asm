.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdi]
xor rdx, -59
and cl, 9 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rsi]
cmovno rax, rax
or ax, 16560
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 3
cmovnle ax, bx
btc edi, eax
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -68
and ax, dx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
cmovz dx, dx
test sil, 41
cmovnb di, ax
cmovnl cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
