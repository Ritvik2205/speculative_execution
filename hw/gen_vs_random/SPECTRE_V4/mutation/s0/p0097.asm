.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo cx, dx
and rsi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rsi]
cmp bl, 12
mov dx, 11552
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
test dl, al
add al, -44
cmovnz rbx, rdx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
sbb dl, al
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
mov cl, bl
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
sub rbx, rbx
mul cx
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
adc cl, 31
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -56
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
sbb bl, -75
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 1 # instrumentation
and dx, word ptr [r14 + rdi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rdi
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
add bl, 58 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rbx]
movsx cx, cl
test dil, -83
xchg di, ax
cmp rcx, -121
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 120
add al, -71 # instrumentation
cmovb rbx, rsi
and bl, cl
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ebx
and rbx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
mul eax
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
mov esi, 1695134926
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
and al, 85
and rdx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdx]
bt rsi, rbx
inc rbx
sbb dl, bl
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
