.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 8 # instrumentation
adc al, dil
or al, cl
cmovz esi, ebx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
test ax, 23760
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
or bl, sil
dec rdx
btc ax, cx
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rbx
sub di, 17
movzx ebx, bl
test ebx, -595096626
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
add bl, 99 # instrumentation
sets bl
and rsi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdi]
inc edx
movsx edi, cx
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
sub rsi, 26
cmp bl, al
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
btc rbx, rcx
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
cmovnp ecx, ebx
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 34
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
cmovnz eax, edi
sub ecx, 2
mov rsi, 55
movzx edx, sil
add dl, 116 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rbx]
setnz bl
add sil, 26
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 63
cmp dl, al
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 6
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], di
cmovp cx, bx
cmovs rdi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
