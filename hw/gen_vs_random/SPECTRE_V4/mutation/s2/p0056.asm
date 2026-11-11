.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz rbx, rdi
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
cmp bl, al
cmovs rdx, rsi
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], -123
and rbx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rbx]
cmovl edi, eax
and rdi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdi]
cmovnz bx, di
cmovz ecx, edx
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
test dl, al
mov bl, dl
and dil, 8
add eax, 1936378991
test cx, 7280
xchg esi, ecx
cmovl rbx, rdi
cmovnp ax, si
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdi
and rcx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rcx]
bswap edx
btc rax, rax
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
add dl, dl
mov ebx, 51969593
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
adc dl, dl
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
or bl, -99
movsx rsi, bx
sbb ax, 16480
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
dec al
adc sil, -2
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
bt edi, 135
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], edx
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 1
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], bx
dec bl
or ebx, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
