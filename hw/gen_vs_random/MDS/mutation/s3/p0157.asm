.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, al
cmovz edx, edx
not sil
test dl, 48
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
test ax, 6113
and rdi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdi]
cmovb bx, dx
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdx], cx
cmovns esi, ecx
or di, di
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
cmovnl edx, ebx
and ax, ax
test eax, 158941032
cmovnp rsi, rsi
and cl, -34 # instrumentation
cmovs rsi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
