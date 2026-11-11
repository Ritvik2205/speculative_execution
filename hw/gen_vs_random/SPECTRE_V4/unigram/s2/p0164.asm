.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -104
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 72
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 4
adc rcx, rdi
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rax
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rcx
btc rsi, rdi
add cl, 14 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rbx]
add dl, 70 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rax]
or dil, dil
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 3
and rdx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rdx]
add cl, -122 # instrumentation
cmovp bx, bx
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
btr ecx, eax
xor dil, 37
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], 40
sub cl, -127
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
sbb ebx, -54
bts rcx, rbx
cmp dil, dl
and rsi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
cmp al, -1
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
inc rdx
xor al, -31
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rsi]
cmovs cx, si
test dil, -83
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], eax
and rax, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rax]
add dl, 87 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rsi]
sub bl, sil
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
or rsi, rdi
and sil, -84
add rdx, rsi
or cl, -55
and rax, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
