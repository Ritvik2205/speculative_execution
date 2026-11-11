.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -32
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 120
and rsi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rax]
inc rbx
movsx cx, cl
and rbx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rbx]
mov dx, 22195
bt rsi, rbx
and rdx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -56
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
and al, 49
cmp bl, 12
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
adc cl, -54
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rdi
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
mov esi, 1695134926
xchg di, ax
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 1 # instrumentation
and dx, word ptr [r14 + rdi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rdi]
test dil, -26
test dl, al
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
cmp rcx, -121
sub rbx, rbx
sbb bl, -79
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
mul eax
and bl, cl
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], dx
sbb dl, bl
mov cl, bl
sbb dl, al
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
add bl, 58 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rbx]
mul cx
add al, -71 # instrumentation
cmovb rbx, rsi
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ebx
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
cmovnz rbx, rdx
cmovo cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
