.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, ax
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], -121
cmovs esi, ecx
and rbx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
and ax, -603
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rax]
add bl, 76 # instrumentation
sbb edx, ebx
or eax, 185586366
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi], 62
and ax, 4
or rsi, -5
sbb dx, 2
cmovz rax, rbx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdi
imul dx, cx
add bl, -74 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
or rax, -943474997
cmovp rdi, rbx
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
movzx edx, al
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rbx]
test dl, al
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -56
sub rbx, rbx
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
add al, -55
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rax]
add al, -71 # instrumentation
cmovb rbx, rsi
sbb bl, -79
and bl, cl
mov esi, 1695134926
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rdi
and rbx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rbx]
mul eax
mul cx
sbb dl, bl
test dil, -83
cmovo cx, dx
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
bt rsi, rbx
cmovnz rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
