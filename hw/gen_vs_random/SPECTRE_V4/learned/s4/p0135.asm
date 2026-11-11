.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx cx, bl
add ax, -13169
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
cmp ax, -906
add bl, bl
or bl, dil
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
sbb bl, al
movsx ecx, sil
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
sub bl, 17
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
adc al, sil
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
or si, 79
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
sbb al, 32
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
bswap rdx
xchg eax, esi
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
xchg dx, bx
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], bx
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
xor dl, 73
cmovnb ax, ax
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
cmp bl, cl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
not dl
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], 47
cmp bl, bl
cmp ax, -15031
test ax, di
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdx]
add al, cl
bts ecx, eax
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
or sil, 16
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
