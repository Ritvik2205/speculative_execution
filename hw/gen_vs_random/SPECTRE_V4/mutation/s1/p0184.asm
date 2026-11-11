.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rdi
test edx, edx
btc eax, 62
sbb ax, 1843
add dl, -8
sbb eax, -920840872
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 4070
sub rsi, -48
and rdx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rcx], cx
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], di
movsx edi, al
sbb di, -105
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
add al, al
add cl, -118 # instrumentation
sbb rsi, 45
xor dx, -43
add al, 41 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 38
sub di, 9
or bl, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv bl
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdx]
sbb dl, bl
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
sub rax, 714283065
or rdi, -41
cmovl edx, esi
and ecx, 71
cmp rax, -1247892360
and rcx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rcx]
mov eax, eax
sbb dl, cl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dl
neg dl
and rdx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rdx]
inc cx
cmovnbe rcx, rdx
cmovnb bx, cx
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], ax
and dl, 124
cmp cx, 0
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], al
add dl, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
cmovnp edi, edx
adc eax, 1378432629
and rax, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rax]
cmp dl, 95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
