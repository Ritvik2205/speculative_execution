.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rax, -2096157586
and rcx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rcx]
adc eax, -3570960
sbb eax, 426996540
and rdx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdx]
cmp dl, 95
movsx edi, al
cmovl edx, esi
mov eax, eax
and rax, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rax]
or rdi, -41
xor dx, -43
and rdx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rcx], cx
add dl, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
add al, al
sub rax, -1066968986
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], ax
sbb di, -105
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rdi
and dl, 126
sbb dl, bl
add dl, -8
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
not di
and al, -28
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
sub cl, -73
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
and dl, -11
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
