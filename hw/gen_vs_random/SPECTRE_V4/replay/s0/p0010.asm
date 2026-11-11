.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rcx
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
movzx rdx, bx
btr cx, cx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
adc cl, -54
cmovbe edi, ecx
xchg rsi, rsi
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
cmp dil, 53
test sil, bl
cmp ebx, -27
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
add al, -79 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
and al, -124
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 9
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rsi
xor esi, esi
adc bl, 97
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], si
neg ax
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 1
and rax, 0b1111111111111 # instrumentation
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
and edi, edi
btr bx, ax
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rbx]
movzx ecx, si
inc eax
mov al, al
xor bl, -126
cmovnp bx, si
and rbx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
and al, 85
sub eax, -638345541
adc cl, al
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rcx
or dil, al
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
btc ecx, edi
and rdx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdx], -50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
