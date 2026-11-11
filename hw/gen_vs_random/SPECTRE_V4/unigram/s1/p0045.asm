.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, dl
btr cx, 252
sbb edi, 107
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], dx
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], -21
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rsi
adc dl, al
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdx
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], -68
cmovnp edx, edx
add cl, 0 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
xchg rdi, rax
neg al
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], sil
and bx, ax
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -117
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], al
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rsi
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], 50
sub dil, cl
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], al
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], dx
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
movzx ebx, al
sub bl, -89
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
sbb cl, sil
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], sil
sub bl, dl
or rcx, 34
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdx
sub cl, al
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 3
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 101
xor al, cl
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ecx
and rsi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rcx]
adc bl, -58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
