.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb esi, eax
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rax
and rax, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rax]
add bl, -18 # instrumentation
mov rdi, rbx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 50
test rsi, 34
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 19
or cl, sil
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb si, di
add al, al
cmovz eax, esi
add bl, -109 # instrumentation
sbb edx, 30
imul bx, di
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 58
adc edx, 40
xor cx, 23
and rcx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rcx]
xor edi, 60
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
and rbx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], 56
cmovo di, si
cmovb dx, dx
add dl, 116 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rax]
sub si, 79
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rdx
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rax]
xor cl, -85
add bl, -18 # instrumentation
mov rcx, rdx
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], si
test dx, 98
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
movsx ebx, ax
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rdx
sbb cl, 19
cmovle si, bx
sub dil, -10
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 7
add rax, 32
sub esi, ecx
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
add eax, edx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 87
cmp rcx, 50
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
