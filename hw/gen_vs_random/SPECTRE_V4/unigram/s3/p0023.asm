.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, 117
and edi, -102
not sil
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], cl
add al, 89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], bl
and bl, al
test dx, 28394
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 67
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 42
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rdx]
and al, sil
xor bx, -65
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 65
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -117
mov cl, dil
add cl, -84 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
mov di, 53
cmovl rax, rcx
and rax, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rax]
cmp eax, 1521417271
add dl, 122 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 28
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
cmp ecx, 5
btc eax, esi
cmovbe ebx, ecx
btr rax, 187
mov bl, 58
and rdi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdi]
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
cmovo di, cx
add al, -29
add ecx, 99
and cl, -128
and rcx, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rcx]
bswap esi
add dl, 122 # instrumentation
cmovz dx, bx
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rax], esi
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rbx
xor edi, 127
mov cl, -38
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edi
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
add al, -10 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
