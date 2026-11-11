.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, -20900
test dl, 9
or al, al
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
or di, di
and ax, ax
cmovns esi, ecx
not sil
cmovz edx, edx
cmovnp rsi, rsi
and cl, -34 # instrumentation
cmovs rsi, rcx
cmovnl edx, ebx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
test eax, -675944960
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdx], cx
cmovb bx, dx
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rdi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
