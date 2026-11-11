.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb ax, 1843
mov bl, dl
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
cmovnz bx, di
test dl, al
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], edx
movsx rsi, bx
dec bl
cmovz ecx, edx
dec al
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
cmp bl, al
add eax, -2075159577
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
btc rax, rax
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], -123
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdi
mov ebx, 817819255
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
test cx, 19367
or bl, -35
and rdi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdi]
cmovs rdx, rsi
cmovl rbx, rdi
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 1
and rcx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rcx]
cmovz rbx, rdi
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], bx
xchg esi, ecx
and dil, 8
bswap edx
or ebx, -78
adc dl, dl
cmovl edi, eax
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
add dl, dl
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
bt edi, 135
cmovnp ax, si
adc sil, -63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
