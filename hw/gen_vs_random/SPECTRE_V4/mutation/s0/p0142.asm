.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec bl
adc dl, dl
add dl, dl
and rdi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
cmovl edi, eax
and rbx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
bswap edx
and rcx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
test cx, 7280
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
cmovz ecx, edx
btc rax, rax
adc sil, -2
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], -123
mov bl, dl
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 4
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], edx
xchg esi, ecx
add eax, 1017938146
cmovl rbx, rdi
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdi
and dil, -120
bt edi, 135
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
mov ebx, 51969593
cmovz rbx, rdi
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
or ebx, -82
cmovnz bx, di
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], bx
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
sbb ax, 10407
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
cmovs rdx, rsi
cmovnp ax, si
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
test dl, al
or bl, 61
cmp bl, al
movsx rsi, bx
dec al
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
