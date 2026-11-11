.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], dx
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
and dl, al
movsx ebx, bx
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ebx
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
xor rsi, rax
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], dx
xchg ecx, edx
imul ecx
movzx cx, sil
cmovp rbx, rcx
sbb ecx, edx
test cx, 7280
xor rdi, rsi
cmovbe ecx, ecx
movzx di, al
sbb dil, 10
add ecx, ebx
and rdi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
and al, dil
and rsi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rsi]
or dl, dl
sbb ecx, 18
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 6
mov ebx, 51969593
cmp edx, 4
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 5
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], 63
and rcx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rcx], -31
btc edi, edx
and rdx, 0b1111111111111 # instrumentation
add al, -84 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rcx]
imul eax, eax
add edx, 89
cmp sil, dl
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -11
cmovnp di, ax
movsx bx, dl
cmp rcx, -121
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 1
add cl, 16 # instrumentation
cmovnz bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
