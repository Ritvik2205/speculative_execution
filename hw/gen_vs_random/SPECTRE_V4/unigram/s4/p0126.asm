.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdi]
mov dl, dl
cmp al, -23
add sil, al
test si, 49
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], eax
neg dl
sbb cl, -104
xor al, 59
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
sbb dx, 14
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
xchg dl, dl
mov al, 78
adc dl, al
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
imul cl
and rdx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdx]
and al, cl
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rsi
xor al, sil
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 5
and rdi, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdi]
mov rcx, rbx
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], 69
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
sbb rdx, 85
dec sil
and sil, dil
cmovnbe ax, cx
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 24
dec si
cmp bl, 13
cmp rbx, 13
sbb ebx, 80
bts rax, 157
and rax, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rax]
and edx, 63
and rcx, -102
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 88
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], si
cmp sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
