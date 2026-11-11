.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb eax, -141178938
and ecx, 71
sub di, 9
sub rax, 714283065
cmp cx, 0
sbb ax, 7207
and rdx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], ax
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], di
and dl, 124
add al, 41 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 38
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
cmp dl, 95
sbb di, -105
mov eax, eax
xor dx, 7
cmovnp edi, edx
btc eax, 62
or bl, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv bl
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rcx], cx
sub rsi, -104
cmovl edx, esi
add dl, 109
and rdx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdx]
add dl, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rax]
add al, al
and rcx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rcx]
test edx, edx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dl
sbb dl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdx]
inc cx
add cl, -118 # instrumentation
sbb rsi, 45
movsx edi, al
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], al
cmovnbe rcx, rdx
or rdi, 43
neg dl
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 4070
sbb dl, bl
adc eax, -60
cmp rax, 1097504565
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
cmovnb bx, cx
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
