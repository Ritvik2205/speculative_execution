.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 92
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
neg ax
and al, -124
mov al, al
and rax, 0b1111111111111 # instrumentation
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rcx
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
xor esi, esi
and rdx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdx], -50
btr cx, cx
cmp dil, 101
or dil, al
movzx rdx, bx
cmovbe edi, ecx
inc eax
and rbx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 9
adc bl, 127
test sil, bl
xor bl, 126
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 4
adc cl, -54
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
cmp ebx, 80
add al, -79 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
btc ecx, edi
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rsi
xchg rsi, rsi
and rbx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rbx]
and edi, edi
cmovnp bx, si
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
adc cl, al
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rcx
movzx ecx, si
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], si
btr bx, ax
sub eax, -90064733
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
