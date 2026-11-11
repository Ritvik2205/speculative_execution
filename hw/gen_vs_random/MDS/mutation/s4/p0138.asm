.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -85
and rdi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
cmovnl edx, ebx
not sil
cmovnp rsi, rsi
or di, di
cmovz edx, edx
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdx], cx
and cl, -34 # instrumentation
cmovs rsi, rcx
and ax, ax
cmovb bx, dx
cmovns esi, ecx
test ax, -11534
test eax, 1838539683
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
or al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
