.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx rdi, bx
or ax, ax
and rbx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rbx]
sbb dx, 2
add bl, 76 # instrumentation
sbb edx, ebx
and rbx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 25
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
and ax, 16313
movzx edx, al
imul dx, cx
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
btc ecx, 201
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], dil
or eax, 143573881
cmovz rax, rbx
and rdx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -86
add dl, -82
cmovp rdi, rbx
sub al, al
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rax]
cmovnz esi, ebx
bt edi, 78
or rax, -387680856
sbb dl, cl
and rbx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rbx]
or rsi, -5
and ax, 25163
and rdi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi], 62
add al, -64 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edx
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
add bl, -74 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rdx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdi
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], -118
cmovs esi, ecx
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], -121
adc cl, 6
cmp sil, 113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
