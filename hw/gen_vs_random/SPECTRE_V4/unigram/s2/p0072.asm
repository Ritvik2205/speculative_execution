.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, 0b1000000000000000 # instrumentation
bsr di, dx
cmovnz rbx, rdi
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rcx]
cmovnbe cx, si
add dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdx]
cmovnb dx, dx
and rbx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rax
and rdx, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rdx]
test bl, -116
xor ebx, ebx
and bx, 19
add eax, esi
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 1
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
add dil, dil
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rcx]
or ax, 27604
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], bx
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 73
cmp dl, 95
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax], 100
or si, 85
cmp ebx, ecx
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rax], cx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rdx
and rsi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
add bl, 126 # instrumentation
cmovb ecx, esi
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rax], ebx
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], 1
or edi, -78
add dl, -55 # instrumentation
cmovnbe esi, edi
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 93
and rdi, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdi]
not bx
test dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
