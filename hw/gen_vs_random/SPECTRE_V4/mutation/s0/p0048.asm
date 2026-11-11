.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
mov bl, dl
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], -123
mov ebx, 817819255
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
btc rax, rax
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdi]
dec al
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
dec bl
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 1
cmovs rdx, rsi
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], edx
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
sbb ax, 75
and dil, 8
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
adc sil, 88
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
adc dl, dl
cmovl edi, eax
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], bx
bswap edx
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
add dl, dl
cmovz rbx, rdi
bt edi, 78
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdi
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
movsx rsi, bx
cmp bl, al
cmovz ecx, edx
xchg esi, ecx
and rcx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rcx]
cmovnz bx, di
or ebx, -82
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
cmovnp ax, si
and rbx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rbx]
or bl, 111
test cx, 19367
test dl, al
add eax, 1936378991
cmovl rbx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
