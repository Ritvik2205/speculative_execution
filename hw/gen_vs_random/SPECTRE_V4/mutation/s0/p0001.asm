.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz rax, rbx
and ax, -16777
add al, -64 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], -118
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -86
cmovp rdi, rbx
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], -121
add dl, 109
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
bt edi, 78
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
imul dx, cx
and rbx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rbx]
movzx edx, al
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], dil
cmovnz esi, ebx
or ax, ax
sbb dl, cl
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdi]
add bl, -74 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdi
and rdx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rdx]
cmovs esi, ecx
btc ecx, 233
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
adc cl, -85
sub al, al
and rbx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rbx]
sbb dx, 2
and ax, 26513
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edx
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 119
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rax]
add bl, 76 # instrumentation
sbb edx, ebx
or eax, -1341747033
and rdi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi], 62
cmp sil, -100
movzx rdi, bx
or rax, 185991441
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
or rsi, -5
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rdx
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
