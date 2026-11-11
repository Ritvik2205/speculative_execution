.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc sil, 88
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
bt edi, 135
xchg esi, ecx
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdi]
test dl, al
bswap edx
test cx, 19367
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
sbb ax, 1843
cmovnp ax, si
cmovl edi, eax
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdi
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], bx
add dl, dl
dec al
mov ebx, 51969593
and dil, -120
btc rax, rax
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
adc dl, dl
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
cmovl rbx, rdi
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], edx
add eax, 1017938146
cmovz rbx, rdi
movsx rsi, bx
cmovz ecx, edx
cmovs rdx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
dec bl
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 1
cmp bl, al
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], -123
or ebx, -78
cmovnz bx, di
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
or bl, -86
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
mov bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
