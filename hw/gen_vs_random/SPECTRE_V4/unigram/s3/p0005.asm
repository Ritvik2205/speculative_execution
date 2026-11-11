.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], rsi
or cx, 79
and rbx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rbx]
test bx, -1599
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rcx
or edx, ebx
test ax, si
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dil
not rax
xor dl, 6
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
sbb dl, sil
test dl, bl
movzx ebx, al
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
cmovo rcx, rcx
cmp cl, 36
add esi, ebx
cmp al, sil
or cx, 67
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edx
and cl, sil
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 26
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], dx
sbb rax, rsi
imul rdi
cmp dl, 36
add bl, 65 # instrumentation
cmovnp ax, dx
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 5
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 63
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
mul ax
imul bx, si, 69
xor al, cl
xor bl, 93
and rsi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rsi]
sbb sil, 108
mov dil, dil
bt cx, 111
and rax, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rsi]
sbb dl, dl
imul bx, ax
add si, 4
cmovz ebx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
