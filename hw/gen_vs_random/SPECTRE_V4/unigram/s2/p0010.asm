.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 83
and rdx, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 96
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
add cl, cl
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
bts eax, 209
xor dl, dil
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 43
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], al
imul cl
imul edi, ebx, 88
add sil, 72 # instrumentation
cmovle si, dx
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], si
imul rbx, rax
and rcx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
cmovnb ecx, ebx
and rdx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rax]
or edi, ecx
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edx
xchg al, al
mov rdx, rdi
cmovnb edi, eax
not di
cmovnbe rcx, rsi
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ecx
xor rdx, rdi
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 29
not bx
bts rdx, rdx
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
add cl, 122 # instrumentation
cmovz rax, rsi
sbb dil, 24
test sil, bl
and rax, 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
