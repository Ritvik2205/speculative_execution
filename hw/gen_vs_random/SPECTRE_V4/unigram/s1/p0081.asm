.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, sil
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], 11
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
and rdx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdx]
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rcx]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
test rbx, 24
movzx edi, bl
sub bl, bl
sbb ax, -19255
and rdi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdi]
cmovb ecx, esi
and rcx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], bl
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
and rdi, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 9
bt ebx, 228
bts edx, edx
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], ax
adc al, dl
cmovz esi, edx
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
neg cx
xor ebx, 26
sub al, 99
sbb ebx, ecx
btc edx, 28
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 17
test ecx, 75
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rsi
cmovnbe rbx, rbx
add bl, -32 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], ax
add cl, -26 # instrumentation
btr ecx, 49
sbb edi, 61
test dil, dil
add cl, 122 # instrumentation
cmovz rbx, rsi
and rdx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdx]
and dl, 5
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 27
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
