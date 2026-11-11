.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rdx]
cmp dil, 101
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
btr bx, ax
adc bl, 127
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
cmovnp bx, si
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and edi, edi
and rdx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdx], -50
inc eax
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
mov al, al
and rbx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rcx
and rbx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rbx]
or dil, al
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and al, -118
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
movzx rdx, bx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 1
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -115
adc cl, al
cmovbe edi, ecx
add al, -79 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
xchg rsi, rsi
and rax, 0b1111111111111 # instrumentation
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
btc ecx, edi
test sil, bl
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rsi
adc cl, -66
btr cx, cx
neg ax
xor bl, 27
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], si
sub eax, -494922880
movzx ecx, si
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rcx
xor esi, esi
cmp ebx, 80
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
and al, -118
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
