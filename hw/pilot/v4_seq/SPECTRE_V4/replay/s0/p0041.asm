.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rax, -2096157586
and rcx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rcx]
adc eax, -1127383570
sbb eax, 426996540
and rdx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdx]
cmp dl, 23
movsx edi, al
cmovl edx, esi
mov eax, eax
and rax, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rax]
or rdi, 43
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
sub rax, 714283065
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], ax
sbb di, -105
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rdi
and dl, -53
sbb dl, bl
add dl, -8
cmovnp edi, edx
cmovnbe rcx, rdx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dl
sub di, 9
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], al
cmp cx, 0
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
and ecx, 71
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -14386
and rdx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdx]
inc cx
or bl, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv bl
add cl, -118 # instrumentation
sbb rsi, 45
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
add al, 41 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 38
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
sbb dl, cl
sub rsi, -104
neg dl
test edx, edx
sbb ax, 18812
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], di
btc eax, 62
cmovnb bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
