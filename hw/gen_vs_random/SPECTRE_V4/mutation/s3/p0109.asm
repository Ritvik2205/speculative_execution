.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], -117
sbb cl, -69
sbb al, -43
or al, al
movzx di, cl
sub dx, dx
mov dl, -124
cmovnl bx, cx
and rcx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rcx]
bts eax, eax
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
add al, -67 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], dl
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi], 17
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rax]
cmovnl si, cx
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], sil
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 50
add eax, 953442933
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -118
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 4
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
cmp al, al
and rax, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rax], -91
sub ax, -1393
and rdi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdi]
sub rsi, rdx
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 1
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 7
mov esi, 1115061743
and rsi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 22
and rdx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], ebx
neg bx
not esi
xor ax, -29507
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], ecx
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rdx
mov ebx, 817819255
sbb al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
