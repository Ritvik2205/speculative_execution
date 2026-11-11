.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp rsi, rsi
and ax, ax
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdx], cx
test eax, 1729060510
or di, di
not sil
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
test ax, 6113
cmovb bx, dx
test dl, 9
cmovns esi, ecx
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and cl, -34 # instrumentation
cmovs rsi, rcx
cmovnl edx, ebx
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rdi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdi]
or al, al
cmovz edx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
