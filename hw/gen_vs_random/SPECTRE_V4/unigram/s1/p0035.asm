.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and al, sil
and rsi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rsi]
btr rdx, 11
cmp al, dl
sbb dil, 77
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
movzx edx, bx
xor sil, dil
adc cl, al
test di, bx
btc rcx, rdx
adc rax, rdx
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], ax
test edx, 1479885278
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], cx
sub al, bl
xor ax, cx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -51
adc rax, -827748523
mul eax
movsx ecx, cx
and rdi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdi]
btr cx, si
and rcx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
or rsi, rax
test cl, bl
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rax
xor rbx, -99
not dl
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
cmp cl, cl
movzx cx, dil
mul cx
add dl, -57 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
imul esi
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], bx
sub edx, -122
cmovnz rbx, rdi
add dl, cl
mov bx, 27738
mov cx, -22668
adc bx, 52
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], eax
btc esi, 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
