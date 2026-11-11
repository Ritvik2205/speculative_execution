.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
cmp rax, 2115020203
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 94
xchg esi, edx
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
add dl, 41
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], esi
sbb dl, -99
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 57
sub dil, -10
bt eax, 84
bswap ebx
bt eax, 84
and rsi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rsi]
cmovnbe bx, cx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
sub rax, -701741274
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], cx
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 98
and rdx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdx]
add bl, 63 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
btc di, 82
sub al, bl
cmovnp rcx, rdi
and rax, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edi
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
cmovnbe di, ax
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
add ecx, edx
test sil, sil
dec ebx
test rsi, 53
mul dl
add si, 4
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], esi
and rsi, 57
sbb esi, 3
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
and sil, al
and rax, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rax]
adc esi, 90
imul rbx, rdi
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rdx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
