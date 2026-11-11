.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -34 # instrumentation
cmovs rsi, rcx
or di, di
and ax, ax
or al, al
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
cmovnp rsi, rsi
not sil
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdi]
cmovb bx, dx
test dl, -119
cmovz edx, edx
test eax, -409834435
test ax, -11534
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
cmovnl edx, ebx
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdx], cx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
cmovns esi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
