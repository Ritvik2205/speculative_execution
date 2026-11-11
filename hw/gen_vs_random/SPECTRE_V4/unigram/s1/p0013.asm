.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz eax, ecx
adc ebx, 117
btc si, ax
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
sub rbx, 95
add bl, -115 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 24
and rcx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rcx]
movzx rcx, di
xor dil, 28
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], dl
movzx rcx, ax
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
mov ax, 11
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], eax
test dl, 19
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ecx
adc rax, rcx
xor al, 102
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 56
cmovs bx, dx
add al, -117 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rsi]
add cl, -37 # instrumentation
adc edi, 2
and rax, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rax]
sub cl, cl
sbb dil, 68
sub rbx, 90
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], bx
add cl, 64
sbb edi, 16
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
test cl, al
mul ax
cmovb esi, eax
and rdi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdi]
cmp dl, 23
and rax, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rax]
movzx rdi, ax
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
btc rdi, 167
test al, dil
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf esi, eax
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
