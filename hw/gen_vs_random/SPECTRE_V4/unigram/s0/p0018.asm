.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rax, rdx
add dl, 118 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
cmp dl, 94
cmp dil, bl
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 100
imul di, ax
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
xor bl, al
add edx, 86
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 26
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rcx]
add bl, -18 # instrumentation
mov rax, rdx
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 8
add cl, 106 # instrumentation
cmovnp rax, rcx
xor dl, 28
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 29
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
add dl, 56 # instrumentation
cmovle rax, rdx
cmovnle bx, bx
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], eax
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
sub ebx, 20
btc dx, cx
cmovz di, di
and rbx, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rbx]
xor al, 29
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
adc edi, 41
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
add cx, 72
and rsi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rsi]
bts eax, 209
and di, 40
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 38
and rsi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
adc dil, al
add si, si
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
