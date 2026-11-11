.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, al
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rcx
and al, -118
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
xchg rsi, rsi
cmp dil, -29
cmovbe edi, ecx
test sil, bl
btr bx, ax
xor esi, esi
movzx ecx, si
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
and edi, edi
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 9
neg ax
and rbx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rbx]
adc cl, al
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rbx]
add al, -79 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
inc eax
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
adc bl, 35
xor bl, 126
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
adc cl, -4
and rdx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], si
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rsi
sub eax, -865916088
and al, 41
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rcx
and rax, 0b1111111111111 # instrumentation
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
btc ecx, edi
btr cx, cx
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 4
cmovnp bx, si
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
cmp ebx, -27
mov al, al
movzx rdx, bx
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdx], -50
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
