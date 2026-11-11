.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, dl
adc dil, -17
sub ax, cx
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
add al, al
and rbx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rbx]
or rdx, rsi
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
and rsi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], dx
and rbx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], bx
and rcx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
mov dl, cl
and rax, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 1
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
xor dil, dl
cmovnp ax, cx
sbb sil, -124
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rdx]
cmovb ax, si
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
add dl, -17 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 41
cmp dl, -82
and rdi, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
add cl, dl
btr si, 114
and rbx, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rsi
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 118
and rsi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rsi]
cmovl edi, esi
cmp dl, 23
and rsi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rsi]
sbb sil, dl
neg di
cmovno eax, edi
imul si, si
and rdi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdi]
add dx, dx
neg dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
