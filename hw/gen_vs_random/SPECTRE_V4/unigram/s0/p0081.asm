.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, 79
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 31
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -70
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], 49
and rcx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rcx]
movzx ax, dl
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rcx
add cl, 122 # instrumentation
cmovz rbx, rdx
movzx eax, ax
and rdx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdx]
mul rbx
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 35
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdi]
sub dil, -10
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
add bl, -21 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
mov al, 93
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], edi
movzx ebx, bx
and rsi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
imul dx, si
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], eax
movzx ax, bl
btc edx, 30
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rcx
sbb edi, 98
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
add al, 123 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
sbb dl, al
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
xor bl, dl
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
and rdi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 58
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 50
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
