.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rdx, rsi
test bl, cl
dec bl
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], dl
xor dil, al
cmovbe edx, edx
add bl, al
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 65
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 42
cmp dl, dl
xchg eax, edx
xor al, -6
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], di
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ebx
cmovnb eax, edi
and rsi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], dil
xchg bx, dx
not bx
mov sil, dl
xor ax, dx
cmovnl eax, ecx
mov dx, 11552
dec cl
xchg rax, rdx
imul ecx, ebx, 99
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
cmovno eax, ebx
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 77
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
dec edx
and rcx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -51
sbb al, -39
add bl, 95 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rcx]
add bl, -97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], edx
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
mov eax, 1596316323
xor bx, -65
cmp cl, dil
and ebx, edx
xor cl, -15
cmp eax, 64
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
btc rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
