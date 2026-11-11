.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb bl, -98
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdx]
cmp rcx, -121
adc cl, -86
add al, -71 # instrumentation
cmovb rbx, rsi
and bl, cl
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rsi]
mov cl, bl
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
add bl, 58 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -56
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
mov dx, 11552
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
bt rsi, rbx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 120
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ebx
sbb dl, bl
sub rbx, rbx
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rax]
xchg di, ax
mul eax
inc rbx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 1 # instrumentation
and dx, word ptr [r14 + rdi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rdi]
test dl, al
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], dx
and al, 59
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
cmovnz rbx, rdx
sbb dl, al
test dil, -83
movsx cx, cl
add al, -32
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rdi
mov esi, 1695134926
cmp bl, 12
cmovo cx, dx
mul cx
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
