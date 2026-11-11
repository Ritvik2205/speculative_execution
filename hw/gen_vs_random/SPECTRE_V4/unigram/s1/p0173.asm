.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rcx]
sbb dl, 75
movsx eax, bl
cmp ebx, -27
mul dx
movsx esi, bl
cmp rax, rdx
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 3
sub dl, al
add dil, dil
xchg dl, dl
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], sil
cmovo eax, edx
and rcx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rcx]
cmp dx, -1
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 3
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf esi, esi
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
mov dl, dl
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edi
cmovle rcx, rdi
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
btr rax, rsi
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
and cl, dil
cmovns ax, di
cmovnb ebx, eax
cmovl rcx, rsi
and rax, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rax]
or dl, dl
mov bl, al
cmovl edx, edi
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
xor ax, -17712
sbb al, al
sub bx, 24
mov cl, 14
or bl, -35
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
movzx ebx, dl
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rdx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
