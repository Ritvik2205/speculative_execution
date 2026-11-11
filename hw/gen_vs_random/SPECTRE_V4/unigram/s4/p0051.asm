.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, rbx
and rax, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 32
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 45
and ax, ax
mov cl, bl
and al, al
and eax, -1572488789
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], esi
xor al, -66
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rcx]
btc rdi, rbx
bt bx, dx
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -52
and rbx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rbx]
imul eax, eax, 79
mul eax
and rdi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdi]
movsx di, al
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
adc rcx, rax
xor rdx, 106
test dil, bl
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 2
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -18
cmovp rax, rdx
and rdi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rsi
sbb bx, 87
add dl, -75 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rcx]
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
movsx ecx, al
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], ax
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
sbb rbx, rdx
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
sbb al, -14
or cx, 0b1000000000000000 # instrumentation
bsr di, cx
cmovl cx, si
xor bx, ax
add al, -7 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
xor sil, al
imul di, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
