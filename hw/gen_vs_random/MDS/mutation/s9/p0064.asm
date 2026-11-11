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
test dl, 9
cmovz edx, edx
test eax, 1729060510
test ax, 30932
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
jmp .bb_0.1
.bb_0.1:
bts dx, cx
test esi, 425331143
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 2
btr rbx, 93
and dl, -40 # instrumentation
cmovp edx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
