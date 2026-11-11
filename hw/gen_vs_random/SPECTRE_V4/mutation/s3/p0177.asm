.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 111
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], bx
and rbx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rbx]
dec al
btc rax, rax
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
cmovl edi, eax
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
mov ebx, 817819255
cmovz rbx, rdi
and dil, 8
and rcx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rcx]
test cx, 19367
or ebx, -82
add eax, -1398129660
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
cmovl rbx, rdi
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdi
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], edx
adc dl, dl
cmovnz bx, di
adc sil, -112
mov bl, dl
sbb ax, 75
bt edi, 233
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
cmovz ecx, edx
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 1
cmovnp ax, si
cmovs rdx, rsi
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
xchg esi, ecx
test dl, al
bswap edx
cmp bl, al
add dl, dl
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], -123
dec bl
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
movsx rsi, bx
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
