.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdi
cmovl edi, eax
add eax, 953442933
cmovnz bx, di
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], bx
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
btc rax, rax
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
adc sil, -112
sbb ax, -30070
dec al
dec bl
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], edx
or ebx, -82
and dil, -120
cmp bl, al
mov bl, dl
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
test dl, al
cmovz rbx, rdi
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
cmovs rdx, rsi
cmovl rbx, rdi
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], -123
and rbx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
movsx rsi, bx
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
mov ebx, 51969593
bt edi, 78
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 4
test cx, 7280
adc dl, dl
and rdi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdi]
add dl, dl
cmovnp ax, si
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
or bl, -35
bswap edx
xchg esi, ecx
cmovz ecx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
