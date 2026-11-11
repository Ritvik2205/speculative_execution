.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdx], cx
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and cl, -34 # instrumentation
cmovs rsi, rcx
not sil
test dl, -95
test ax, 6113
or al, al
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
test eax, -409834435
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
cmovns esi, ecx
and rdi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdi]
cmovz edx, edx
cmovb bx, dx
and ax, ax
or di, di
cmovnl edx, ebx
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
cmovnp rsi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
