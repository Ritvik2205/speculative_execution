.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec al
or ebx, -78
add eax, 544045319
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rcx]
mov ebx, 817819255
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
btc rax, rax
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
cmovs rdx, rsi
cmovl edi, eax
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
dec bl
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 1
cmp bl, al
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
test cx, 7280
and rbx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], edx
test dl, al
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdi
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], -123
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], bx
adc sil, 77
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
cmovz rbx, rdi
bt edi, 78
bswap edx
cmovnp ax, si
sbb ax, 75
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
movsx rsi, bx
cmovl rbx, rdi
and rdi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdi]
adc dl, dl
mov bl, dl
and dil, 8
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
or bl, -35
xchg esi, ecx
add dl, dl
cmovnz bx, di
cmovz ecx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
