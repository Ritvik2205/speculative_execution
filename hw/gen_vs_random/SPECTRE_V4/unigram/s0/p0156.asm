.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 55
and rdx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdx]
and bx, 95
add dl, 118 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
sbb rcx, 11
cmp bl, al
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 52
sub bl, 17
and rdi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdi]
cmovz dx, dx
btc cx, 240
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rax]
movsx eax, dl
sub si, bx
and rsi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rsi
and sil, -49
cmovb edi, edx
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
cmp bl, dl
add dl, 31 # instrumentation
cmovnl cx, cx
mov rsi, rcx
bts eax, 209
and rdx, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rdx]
mul ax
cmovnbe rbx, rdx
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rcx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
and dl, 10
sub bx, ax
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], cx
imul cl
imul bl
sub dil, dil
and rax, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 2
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rdi
bts rax, 157
sbb ax, -26881
add eax, -1796699558
or al, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rax
cmovo rsi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
