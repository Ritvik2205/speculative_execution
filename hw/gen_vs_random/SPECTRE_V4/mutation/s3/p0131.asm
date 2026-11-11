.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe rcx, rdx
mov eax, eax
cmp rax, -2096157586
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rcx], cx
add cl, -118 # instrumentation
sbb rsi, 45
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rax, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rax]
btc eax, 62
neg dl
sub rax, 1294268026
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
add dl, 109
sub rsi, -48
cmovnb bx, cx
and rdx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdx]
movsx edi, al
inc cx
test edx, edx
or bl, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv bl
and dl, -53
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -14386
xor dx, 7
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rdi
sbb dl, cl
sbb dl, bl
and ecx, 71
and rdx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rdx]
cmp cx, 0
cmovnp edi, edx
sub di, 9
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], di
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
add dl, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
or rdi, 43
sbb eax, 1482884079
add al, 41 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 38
add al, al
sbb di, -105
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], ax
and rcx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rcx]
cmovl edx, esi
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], al
sbb ax, 18812
cmp dl, -82
adc eax, -689629357
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
