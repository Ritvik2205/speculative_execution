.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -59 # instrumentation
movsx edi, bl
cmovno esi, edi
sbb dl, cl
cmp dil, -29
test dil, -26
and rsi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rsi]
cmovbe rsi, rax
mov cl, 14
and ebx, -122
adc rax, 253624080
sub al, dl
cmovnz cx, di
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 76
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -63
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rsi
add al, cl
cmovbe eax, esi
cmovnl rdx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
add cl, 87 # instrumentation
cmovz edx, ecx
sub rbx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rbx]
sub dl, bl
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -74
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 4
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
cmp al, al
and rax, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rax], -91
sub ax, -1393
and rdi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdi]
sub rsi, rdx
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 3
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 7
mov esi, 1115061743
and rsi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 22
and rdx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], ebx
neg bx
not esi
xor ax, -6064
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], ecx
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rdx
mov ebx, 51969593
sbb al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
