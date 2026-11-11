.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rax]
sbb dl, bl
mov cl, bl
add al, -71 # instrumentation
cmovb rbx, rsi
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 120
sbb dl, al
xchg di, ax
test dl, al
add al, -44
and bl, cl
cmovo cx, dx
cmovnz rbx, rdx
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
mov esi, 1695134926
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 1 # instrumentation
and dx, word ptr [r14 + rdi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rsi]
mul eax
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
bt rsi, rbx
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
mov dx, 11552
inc rbx
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
mul cx
and al, -1
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ebx
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
adc cl, -66
and rbx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
cmp rcx, -121
test dil, -58
add bl, 58 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rdi
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
cmp bl, -16
movsx cx, cl
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], dx
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -56
sub rbx, rbx
sbb bl, -98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
