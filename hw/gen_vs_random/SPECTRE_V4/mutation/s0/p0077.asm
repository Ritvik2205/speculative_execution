.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -56
xchg di, ax
and al, 100
add bl, 58 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rbx]
mov cl, bl
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rdi
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ebx
mul cx
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], dx
cmovnz rbx, rdx
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
cmp rcx, -121
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
test dil, -5
inc rbx
add al, -1
and bl, cl
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
add al, -71 # instrumentation
cmovb rbx, rsi
test dl, al
movsx cx, cl
mul eax
cmp bl, -16
and rsi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rsi]
sbb bl, -79
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
mov dx, 22195
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 120
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 1 # instrumentation
and dx, word ptr [r14 + rdi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rdi]
bt rsi, rbx
adc cl, -66
sub rbx, rbx
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
cmovo cx, dx
sbb dl, al
mov esi, 1695134926
sbb dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
