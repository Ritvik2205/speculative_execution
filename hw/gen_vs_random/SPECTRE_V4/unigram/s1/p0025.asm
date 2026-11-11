.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rax]
movzx eax, sil
add si, 4
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
bt edx, ebx
mul rbx
and rcx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rcx]
and di, 48
and rdi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
add rdi, 105
and rsi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rsi]
not cx
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
adc cl, 38
and rsi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rbx]
cmp ax, -906
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 25
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rax], si
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
and sil, -49
and rdx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 60
and rdx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rdx]
bt esi, 227
sub dl, 43
sbb sil, 108
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], ax
and al, dl
and cl, dil
adc ax, 20
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 17
test dil, 73
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
btr rsi, rbx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 17
cmp sil, sil
sbb al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
