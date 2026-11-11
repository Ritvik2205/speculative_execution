.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], dx
and rdx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], 96
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 4
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
cmovno cx, si
and bx, bx
and ax, bx
and rbx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
imul di, ax
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], sil
xor ax, -17712
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
test sil, 16
test cl, -119
and ecx, 71
mov ecx, -405458789
cmp cl, cl
cmovnle dx, dx
sub dl, -16
sub sil, sil
and rax, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dl
sbb al, bl
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 9
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], sil
btr dx, dx
sub sil, -35
movzx ecx, dil
or rax, rax
xchg rdi, rax
cmovnz rcx, rax
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], -68
bt rdx, rdx
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
adc sil, dl
or rcx, 8
adc al, -59
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], -112
sub rax, 1914398062
and rcx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rcx]
mov sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
