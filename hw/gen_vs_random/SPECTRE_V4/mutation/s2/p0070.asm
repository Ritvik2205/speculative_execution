.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
adc bl, 97
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], si
and rdx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
add al, -79 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
and al, 41
and rax, 0b1111111111111 # instrumentation
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
adc cl, -86
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
sub eax, 490935921
cmp ebx, -19
cmovnp bx, si
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rcx
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
xor esi, esi
mov al, al
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rcx
and rbx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rbx]
movzx ecx, si
btc ecx, edi
and al, 49
and rbx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rbx]
btr cx, cx
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rsi
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 1
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
cmp dil, -29
xchg rsi, rsi
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
cmovbe edi, ecx
or dil, al
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdx], -50
xor bl, 27
btr bx, ax
adc cl, al
inc eax
neg ax
test sil, bl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
and edi, edi
movzx rdx, bx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
