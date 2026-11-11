.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
not sil
and cl, -34 # instrumentation
cmovs rsi, rcx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
or al, al
test ax, -20900
cmovnl edx, ebx
and ax, ax
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdx], cx
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
test dl, -95
cmovns esi, ecx
cmovz edx, edx
test eax, 298249463
and rdi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdi]
or di, di
cmovnp rsi, rsi
cmovb bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
