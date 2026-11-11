.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 9
dec rax
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle eax, esi
and rbx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
dec cl
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dil
mul ax
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
sub bl, cl
and rax, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
add dl, 48 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], dil
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 41
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb ax, dx
add cl, 122 # instrumentation
cmovz rcx, rdx
and rbx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dil
test edi, -1249897727
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
imul bx, ax
and rbx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rbx]
imul dl
and rdi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 5
movzx dx, cl
xor si, 2
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
cmp sil, dl
add al, -117 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rsi
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 85
bts esi, 241
inc al
and rbx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], sil
movzx edx, al
add al, al
and rdx, 35
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rsi], edx
and rsi, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rbx
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
