.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -61
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], al
or al, dil
cmovnp rcx, rax
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], sil
btc ebx, edx
and rsi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rsi]
adc rdx, -90
and rsi, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 61
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 76
dec di
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdx]
add edi, 63
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
sbb al, 54
cmp cx, 0
cmovnl ax, cx
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 95
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], -15
bts ebx, 197
and rdx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdx]
cmp rcx, -121
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], edi
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rax
xor rbx, rsi
and rbx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rbx]
sub cl, 18
and eax, edi
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
bswap ecx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -112
and cl, bl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 89
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
or rdx, rax
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], bx
add al, 20 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
sbb bl, cl
cmovo si, ax
add dl, -85 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
dec dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
