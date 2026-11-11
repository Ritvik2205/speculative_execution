.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, bl
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 120
and rdx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
inc rbx
xchg di, ax
adc cl, 31
and al, -28
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
movsx cx, cl
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
add bl, 58 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rbx]
cmp bl, -79
cmp rcx, -121
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], dx
mov dx, 11552
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 1 # instrumentation
and dx, word ptr [r14 + rdi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
sbb dl, al
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ebx
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
test dl, al
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -56
sub rbx, rbx
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
add al, -32
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rax]
add al, -71 # instrumentation
cmovb rbx, rsi
sbb bl, -98
and bl, cl
mov esi, 1115061743
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rdi
and rbx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rbx]
mul eax
mul cx
sbb dl, bl
test dil, -26
cmovo cx, dx
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
bt rsi, rbx
cmovnz rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
