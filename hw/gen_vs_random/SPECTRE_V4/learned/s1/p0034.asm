.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -115 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 2
cmovz edx, ecx
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
bts esi, 241
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
add cl, 106 # instrumentation
cmovnp rdi, rsi
dec rbx
btc dx, 16
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
not si
sbb al, -47
cmovnbe rcx, rcx
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
sbb al, -47
cmovs rax, rdx
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], -12
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi]
add dl, 12 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
add dl, 97 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 7
cmovnbe si, ax
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
test dil, cl
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 7
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
mul edx
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
and rdx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
and bx, 95
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
and rax, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rax]
test bl, bl
not bx
cmp bl, dl
or bx, dx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
sbb al, dl
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], 55
cmp bl, bl
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
cmovle rbx, rsi
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
cmovl rdi, rax
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], 78
inc edx
cmp bl, dil
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
