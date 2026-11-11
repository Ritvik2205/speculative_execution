.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb bx, dx
test dl, 9
or al, al
and ax, ax
cmovns esi, ecx
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
cmovnl edx, ebx
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdx], cx
test ax, 30932
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
cmovz edx, edx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
or di, di
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdi]
and cl, -34 # instrumentation
cmovs rsi, rcx
not sil
test eax, -571234566
cmovnp rsi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
