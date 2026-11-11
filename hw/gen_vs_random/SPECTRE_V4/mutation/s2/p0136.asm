.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dl, al
movsx cx, cl
bt rsi, rbx
test dil, -26
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rdi
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 120
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rbx]
sub rbx, rbx
sbb dl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
test dl, al
sbb bl, -98
mov dx, 22195
and rsi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
cmp rcx, -121
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -56
add bl, 58 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rbx]
add al, -6
mul cx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
and al, -124
add al, -71 # instrumentation
cmovb rbx, rsi
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
cmovnz rbx, rdx
mov cl, bl
mov esi, 1695134926
mul eax
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 1 # instrumentation
and dx, word ptr [r14 + rdi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rdi]
cmp bl, -16
cmovo cx, dx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
and bl, cl
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ebx
xchg di, ax
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rax]
adc cl, -54
inc rbx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
