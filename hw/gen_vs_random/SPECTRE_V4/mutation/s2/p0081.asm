.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rcx]
sub rsi, -48
cmovnp edi, edx
cmovnb bx, cx
add dl, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
and ecx, 71
or rdi, -41
cmovnbe rcx, rdx
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], di
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
sbb dl, cl
inc cx
and dl, 24
sbb dl, bl
sbb di, -105
and rdx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdx]
neg dl
add cl, -118 # instrumentation
sbb rsi, 45
btc eax, 62
add al, al
xor dx, -43
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
add dl, -8
mov eax, eax
sub di, 9
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdx]
test edx, edx
cmp rax, 1682181214
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], ax
sbb eax, -747044528
sbb ax, 7207
adc eax, -3570960
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rcx], cx
cmp dl, 95
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rdi
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -14386
cmovl edx, esi
add al, 41 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 38
movsx edi, al
or bl, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv bl
sub rax, -1066968986
and rdx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], al
cmp cx, 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
