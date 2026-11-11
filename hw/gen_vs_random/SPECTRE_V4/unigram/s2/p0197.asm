.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, 81
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
xchg dil, al
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax], -27
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 65
and rsi, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], cx
sub dil, -28
and dl, al
cmp rdi, 28
and rdi, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rdi]
adc edx, -86
cmovno edi, ecx
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dl
movzx rbx, cl
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ebx
dec rdx
test dx, dx
sub cl, -127
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
mul cl
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 76
and rcx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rcx]
add cl, -122 # instrumentation
cmovp cx, cx
sub bl, sil
and rsi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], edi
and ecx, esi
and rax, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rax], 64
and rax, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rax]
add dl, 87 # instrumentation
cmovz ebx, edx
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 59
xor di, 87
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], esi
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rax]
cmp rdx, -49
or al, -90
sub edx, -122
imul rax, rax
and rdi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], 77
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
