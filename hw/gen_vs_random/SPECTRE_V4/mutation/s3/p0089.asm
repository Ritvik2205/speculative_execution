.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dx, 24004
movsx cx, cl
cmp rcx, -121
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 1 # instrumentation
and dx, word ptr [r14 + rdi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
mov esi, 1695134926
inc rbx
and bl, cl
mul eax
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rsi]
add bl, 58 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rbx]
cmovo cx, dx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
add al, -71 # instrumentation
cmovb rbx, rsi
and al, 85
sub rbx, rbx
mov cl, bl
bt rsi, rbx
test dil, -5
sbb dl, al
add al, -6
cmp bl, 12
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rax]
sbb bl, -98
and rbx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
adc cl, -54
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rdi
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 120
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ebx
xchg di, ax
sbb dl, bl
cmovnz rbx, rdx
test dl, al
mul cx
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
