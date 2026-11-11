.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 5
cmp dil, -124
and rdx, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], edi
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], sil
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 35
cmovs rdi, rcx
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
sbb al, bl
cmovnbe esi, edi
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe edx, ecx
not rsi
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rcx
xor ax, 25554
test al, 66
and rsi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rsi], 13
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
and ax, 35
btc bx, dx
and rax, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 99
cmovnle ebx, edi
sub al, cl
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], 63
and rax, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rax]
inc di
imul rbx
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], di
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
mov rbx, rax
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, ecx
add bl, 63 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
movzx ebx, dl
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
add cl, -75 # instrumentation
adc cl, 96
sub sil, dil
inc cl
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], si
mov si, 27
imul ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
