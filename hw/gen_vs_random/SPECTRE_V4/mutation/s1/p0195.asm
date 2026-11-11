.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdi
test dl, al
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
sbb ax, 18812
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], edx
adc dl, dl
or bl, 80
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
add dl, dl
cmovz ecx, edx
cmovl rbx, rdi
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
cmp bl, al
cmovl edi, eax
adc sil, 111
cmovz rbx, rdi
cmovnp ax, si
and dil, -61
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
bt edi, 78
dec bl
cmovnz bx, di
dec al
or ebx, -78
mov ebx, 51969593
and rcx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdi]
bswap edx
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
add eax, 1255256879
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
btc rax, rax
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 1
mov bl, dl
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
movsx rsi, bx
and rbx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
cmovs rdx, rsi
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], bx
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
test cx, 7280
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], -123
xchg esi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
