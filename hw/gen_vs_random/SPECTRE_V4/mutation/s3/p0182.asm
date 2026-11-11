.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
cmovz rax, rbx
and rdx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rdx]
adc cl, -86
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rdx
or eax, -646827727
add al, -64 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
bt edi, 135
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -86
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], dil
and ax, -6897
movzx edx, al
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 69
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], -121
add bl, 76 # instrumentation
sbb edx, ebx
sbb dl, cl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdi
or rax, 1042095162
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
and rbx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rbx]
sbb dx, 2
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edx
or rsi, 73
add dl, -8
imul dx, cx
sub al, al
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi], 62
and rdi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdi]
cmovs esi, ecx
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
and ax, 4
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
movzx rdi, bx
cmovp rdi, rbx
cmp sil, 127
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 25
btc ecx, 201
add bl, -74 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
or ax, ax
and rbx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rbx]
cmovnz esi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
