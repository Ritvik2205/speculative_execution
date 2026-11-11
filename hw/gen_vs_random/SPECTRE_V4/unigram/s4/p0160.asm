.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul esi, ecx, 29
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 70
cmovns rdx, rbx
cmp dl, dil
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 88
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dil
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 60
xor al, dl
test eax, -544019457
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
test di, 99
cmovnbe si, ax
or ax, di
cmovns bx, si
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
and rdx, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rax]
test cl, sil
and rdx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdx]
and al, bl
and rsi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
add cl, cl
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
sub ecx, 87
add al, 5
imul dx, ax, 55
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], ax
add bx, 110
mov edi, -1544998000
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rax], ax
adc eax, -1513455903
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
bswap rdi
xor al, 69
cmovnb edx, eax
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 11
and rax, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rax]
not dx
sbb dil, 3
and rdx, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdx]
movzx ebx, al
and rbx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rbx]
cmovnle rsi, rsi
and rdi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
