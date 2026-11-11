.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
cmovnp rsi, rsi
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
or di, di
and rdi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdi]
not sil
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
test ax, 6779
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
cmovb bx, dx
test dl, 9
cmovnl edx, ebx
cmovns esi, ecx
and ax, ax
cmovz edx, edx
or al, al
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdx], cx
and cl, -34 # instrumentation
cmovs rsi, rcx
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
test eax, -409834435
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
