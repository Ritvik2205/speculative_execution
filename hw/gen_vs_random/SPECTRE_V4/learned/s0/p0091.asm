.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
test dl, 19
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rsi]
movzx ax, al
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], 43
not ecx
js .bb_0.1
jmp .exit_0
.bb_0.1:
btc di, 92
btr rax, rdi
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rax]
sbb ax, -19255
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
cmovle si, si
sbb al, 123
adc di, -110
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ecx
not ax
and sil, -49
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rdi], bx
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -64
and dl, bl
xchg eax, ebx
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], si
cmovnbe rdx, rax
cmp dil, -124
movzx ebx, sil
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
imul rdi, rsi, 57
and rbx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rbx]
imul eax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
xor dl, dil
and rax, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], cx
movzx edx, cl
adc rax, 1542637830
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
cmovb rdx, rdi
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
cmp al, 81
xor esi, eax
and al, dl
movzx bx, sil
cmovnbe eax, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
