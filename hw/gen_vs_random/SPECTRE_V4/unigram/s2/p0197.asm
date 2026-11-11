.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, -12775
add bx, 110
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdi
and rax, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rax]
not di
and ax, 35
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 80
and dil, 96
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 50
xchg dl, dl
add cl, -32 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rcx]
test edx, 573099753
imul di, ax, 41
movzx ebx, bx
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], bx
sub dil, cl
xor al, 56
test rbx, 54
bts eax, 209
and rax, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rax]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ebx
sbb dil, 22
cmovnp cx, bx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
mov ax, 92
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 36
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
or bx, -111
xchg di, ax
cmovnle dx, dx
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
sbb cl, al
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
bts rcx, rdi
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe eax, edi
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rcx
cmp al, 81
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
bt eax, ecx
test esi, 98
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx]
movzx edi, bl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 97
add dil, 82
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
