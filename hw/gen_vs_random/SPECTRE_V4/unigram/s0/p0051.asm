.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -123 # instrumentation
sbb al, 98
adc rcx, 57
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
bt ax, 145
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], ecx
movzx ecx, si
dec cx
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], sil
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
cmovnz rsi, rsi
and rbx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rbx]
xchg al, sil
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rdx], cx
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 93
mov sil, dl
cmovnz rbx, rbx
test si, 73
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 8
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
mov ecx, -405458789
add dl, -8
cmovns ax, dx
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rbx], si
mov cx, si
adc ax, 17267
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], 74
cmovnz rsi, rax
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 2
or bl, bl
dec dl
and rsi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rsi]
adc bl, dl
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
cmp eax, edx
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edi
adc cx, 16
add bl, -91 # instrumentation
inc rdi
mov dl, bl
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
xor dil, dil
cmovl ax, ax
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
btc rsi, 77
and rdi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdi]
add sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
