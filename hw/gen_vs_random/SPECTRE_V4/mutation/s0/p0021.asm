.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, 19367
bt edi, 233
add dl, dl
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rcx]
cmovl rbx, rdi
cmp bl, al
btc rax, rax
cmovl edi, eax
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], -123
cmovs rdx, rsi
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdi
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
test dl, al
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
cmovnp ax, si
dec al
movsx rsi, bx
adc dl, dl
adc sil, 88
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
sbb ax, 16480
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 1
or ebx, -82
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], bx
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
cmovz ecx, edx
add eax, 544045319
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], edx
dec bl
mov bl, dl
bswap edx
or bl, -80
and dil, -61
cmovz rbx, rdi
and rdi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdi]
xchg esi, ecx
cmovnz bx, di
mov ebx, 817819255
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
