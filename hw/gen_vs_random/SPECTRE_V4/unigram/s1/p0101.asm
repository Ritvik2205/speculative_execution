.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 0
sbb bl, 57
cmovnp bx, si
or cl, 95
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], di
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
cmovz esi, esi
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
cmp dl, 67
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], 75
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 69
adc ax, ax
cmovnl rdx, rcx
xor al, 56
bts rcx, rdx
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rcx]
add ebx, 3
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rdi], dx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
btc rax, rsi
mul esi
adc esi, 90
sub edi, 57
cmp rcx, 16
not dx
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
test sil, 36
and rbx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rbx]
sub dl, al
movzx ecx, al
not rcx
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
movzx cx, dil
and ebx, 100
xor dil, dl
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add bl, -18 # instrumentation
mov rdx, rax
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edx
cmovnbe rax, rbx
or si, 45
or sil, al
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 32
cmovnb dx, dx
and rdx, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rdx]
cmp cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
