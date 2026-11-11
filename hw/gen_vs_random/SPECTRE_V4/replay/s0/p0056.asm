.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt edi, 233
dec bl
adc dl, dl
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
movsx rsi, bx
add dl, dl
and rcx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rcx]
cmovnz bx, di
btc rax, rax
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 4
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], edx
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
cmovz rbx, rdi
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
mov ebx, 817819255
bswap edx
xchg esi, ecx
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
dec al
cmovl edi, eax
test cx, 7280
cmovl rbx, rdi
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], -123
cmovs rdx, rsi
or ebx, -78
and rbx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], bx
add eax, -1398129660
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdi
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
and dil, -23
test dl, al
or bl, -80
cmovz ecx, edx
sbb ax, 7207
cmovnp ax, si
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
mov bl, dl
cmp bl, al
adc sil, -63
and rdi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
