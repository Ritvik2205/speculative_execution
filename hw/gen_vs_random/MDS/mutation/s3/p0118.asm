.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
cmovnp rsi, rsi
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
or al, al
and ax, ax
not sil
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdx], cx
cmovb bx, dx
test dl, -85
cmovnl edx, ebx
or di, di
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
cmovz edx, edx
and cl, -34 # instrumentation
cmovs rsi, rcx
and rdi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdi]
cmovns esi, ecx
test eax, -571234566
test ax, 6113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
