.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -118
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
not dx
xor dl, -123
or rdi, 43
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
cmovnz si, ax
inc dl
sbb al, 102
cmovnz rdi, rdi
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rax
btc ax, di
test rdx, -1074289902
and rcx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
xor cl, -15
bswap ecx
cmovz edi, ecx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
cmovz rax, rsi
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], eax
sub rdx, 98
sub al, dl
sbb di, -105
bswap edi
sbb rdi, 25
cmovl eax, edx
xchg edx, ecx
and al, 92
sub sil, al
xor cx, dx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edx, eax
cmovbe rdx, rbx
and rbx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
inc edi
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
add ebx, -57
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
xor dl, -123
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 65
bt rsi, 242
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], dx
xor si, -73
btc rax, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
