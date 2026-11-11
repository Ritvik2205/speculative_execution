.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdi]
movzx rdx, bx
add bl, 63 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
mov cl, 6
inc cl
add cl, 119 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 73
and dil, bl
not ax
imul rdi
and dil, 96
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
and rdx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdx]
cmovb edi, edx
imul cl
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, esi
cmovnp rbx, rax
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rbx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rbx]
cmovnp rdx, rax
btc rax, rcx
add dl, al
and rsi, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rsi]
cmovnz dx, cx
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], dil
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
add al, 72 # instrumentation
cmovle ax, bx
dec esi
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rbx
and rdx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rdx]
sbb cl, 20
cmp cl, 65
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
mov rbx, 9101099553822202722
add dl, 116 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdi]
adc cl, dl
sbb bx, 51
mov rdx, rax
and rbx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
add rbx, 34
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
and rbx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
