.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], edx
sbb al, 32
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], si
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 63
cmp al, -52
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
neg dl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 90
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 38
sub ax, 24441
add dl, bl
or edi, 25
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95
and rax, 20
and dl, 84 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rsi]
not si
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rsi
and dl, al
xchg cx, di
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rbx], si
or cx, 0b1000000000000000 # instrumentation
bsr cx, cx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
cmovns rbx, rcx
movzx ecx, dl
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
bt esi, 227
and rdx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rdx]
sub ecx, ebx
or rsi, 6
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
and rdx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdx]
add dl, -94 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rcx]
imul esi, edx
mov sil, 43
adc cl, bl
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
