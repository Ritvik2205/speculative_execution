.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs cx, bx
bswap rcx
sub al, 50
adc ebx, 117
and rdx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rdx]
xor al, 102
or dx, bx
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], bx
inc dil
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
add bl, -18 # instrumentation
mov rdx, rsi
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 41
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 3
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
btc ax, 10
sub dl, al
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 8
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 39
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], si
add al, -71 # instrumentation
adc al, dl
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 76
and rsi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 65
cmovle edx, ebx
sbb dx, 18
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 37
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
dec eax
and si, 68
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 9
and rcx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rcx]
cmovnbe rcx, rsi
or dil, cl
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rcx], cx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
cmp dl, bl
add cl, al
cmovle dx, cx
and rsi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdi]
xor al, al
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 23
cmp dil, dl
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
cmovnbe rdi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
