.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], edx
cmovz ecx, edx
cmovnp ax, si
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
adc sil, -63
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdi
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], -123
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
mov bl, dl
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 4
add eax, -2075159577
btc rax, rax
and rdi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdi]
test dl, al
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
bt edi, 233
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
dec al
and rbx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rbx]
test cx, 7280
or ebx, -78
bswap edx
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
or bl, -99
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], bx
dec bl
cmovz rbx, rdi
cmovl rbx, rdi
sbb ax, 75
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
cmovl edi, eax
cmovnz bx, di
and dil, 8
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
add dl, dl
and rcx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rcx]
cmp bl, al
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
adc dl, dl
cmovs rdx, rsi
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
movsx rsi, bx
xchg esi, ecx
mov ebx, 51969593
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
