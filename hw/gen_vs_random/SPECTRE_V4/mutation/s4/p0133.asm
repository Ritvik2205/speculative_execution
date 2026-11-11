.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, al
or di, bx
or ax, -29521
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
and cl, dl
cmp dx, -26
movsx edi, di
cmovnle bx, ax
and rcx, 29
sub ax, 8246
cmovnle rcx, rax
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx]
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
add dil, sil
mov al, 82
bt eax, 54
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 6
sbb ax, 7207
and ax, -6897
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
and rsi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ebx
and di, -34
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
not di
and al, -12
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
btr bx, cx
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
bswap ebx
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -87
sub cl, -94
cmovs edx, eax
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -115
and rdi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdi]
xor bl, cl
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 3
add dl, -57 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rsi]
and dl, -53
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], ecx
add dl, 29 # instrumentation
cmovnl rdi, rbx
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
mov dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
