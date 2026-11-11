.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
movzx rdx, bx
adc cl, al
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
adc cl, -54
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -52
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
mov al, al
btr cx, cx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], si
cmovnp bx, si
and rbx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
test sil, bl
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rcx
neg ax
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rcx
xor esi, esi
sub eax, -90064733
movzx ecx, si
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdx], -50
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 4
add al, -79 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
cmovbe edi, ecx
and al, 92
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rsi
cmp ebx, -19
inc eax
or dil, al
btc ecx, edi
xor bl, 126
and edi, edi
and rdx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rdx]
and al, -12
xchg rsi, rsi
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
adc bl, 35
btr bx, ax
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
cmp dil, 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
