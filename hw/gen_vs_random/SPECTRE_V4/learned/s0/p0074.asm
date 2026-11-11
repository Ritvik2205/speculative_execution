.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -71 # instrumentation
adc al, bl
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
sbb rsi, rbx
mov dl, -34
and ax, 35
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
dec dl
neg cl
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
xchg dl, dl
or al, 96
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
add di, -74
sbb ax, -19255
imul rbx
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
adc rax, 1542637830
cmovz esi, ecx
or dl, dl
xor rsi, -3
not bx
add cx, 3
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
cmovnb rdx, rcx
xor cl, dl
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rax]
cmovnz edi, edx
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
neg ebx
sub sil, -36
and rdi, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 43
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
add esi, edx
add esi, -5
and rax, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rax]
test edx, ebx
not dl
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
imul esi, eax
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 86
xor sil, cl
not ebx
cmovb di, di
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], esi
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], eax
and rbx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rbx]
and al, -127
bt ebx, 228
add si, 4
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
