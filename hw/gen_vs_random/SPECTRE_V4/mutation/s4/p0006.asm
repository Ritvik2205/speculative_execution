.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul eax
test dil, -26
and rbx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
cmp bl, 12
mov esi, 1115061743
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 120
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 1 # instrumentation
and dx, word ptr [r14 + rdi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rdi]
inc rbx
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
test dl, al
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
mov cl, bl
adc cl, -66
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
cmovo cx, dx
add al, 40
mul cx
sbb dl, al
bt rsi, rbx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
add al, -71 # instrumentation
cmovb rbx, rsi
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -56
cmovnz rbx, rdx
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
sbb bl, 121
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rdi
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], dx
and rsi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rsi]
and al, -28
movsx cx, cl
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ebx
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
mov dx, 11552
sub rbx, rbx
xchg di, ax
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
sbb dl, bl
and bl, cl
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
cmp rcx, -121
add bl, 58 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
