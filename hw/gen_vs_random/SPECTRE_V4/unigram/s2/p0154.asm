.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, dx
bts ax, 159
and rbx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], -74
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
and dl, -53
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], -101
mul cl
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 7
mov bl, dl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], bx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], sil
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rax
sub di, cx
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
sub rbx, 101
or al, -19
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 127
sub cl, 92
mul cl
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], si
cmovz si, dx
or al, cl
cmovno rdx, rax
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rax]
btc edx, 165
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rsi
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdi
not rcx
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
add bl, 126 # instrumentation
cmovb ecx, edi
bts edi, 36
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 36
add esi, 54
cmp di, bx
add dl, -55 # instrumentation
cmovnbe edx, eax
and rdx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdx]
imul al
movzx ebx, sil
neg dl
cmovp rsi, rax
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
