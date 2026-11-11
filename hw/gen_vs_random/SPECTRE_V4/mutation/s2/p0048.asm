.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
add bl, 76 # instrumentation
sbb edx, ebx
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -86
add bl, -74 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
imul dx, cx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 25
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi], 62
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], -121
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edx
and ax, 26513
and ax, 16313
sub al, al
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
or rsi, -5
and rdx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rdx]
or ax, ax
btc ecx, 233
and rbx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rbx]
add al, -64 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rbx]
cmovz rax, rbx
and rdi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
cmp sil, -100
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], dil
cmovs esi, ecx
cmovp rdi, rbx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdi
add dl, -8
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
or eax, 185586366
sbb dx, 2
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rdx
or rax, -2144083737
adc cl, -54
movzx rdi, bx
sbb dl, cl
cmovnz esi, ebx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
movzx edx, al
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
bt edi, 78
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], -118
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
