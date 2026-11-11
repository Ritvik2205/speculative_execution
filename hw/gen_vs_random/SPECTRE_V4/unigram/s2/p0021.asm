.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc al, sil
bt ecx, 30
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], eax
and rax, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rax]
xchg cl, cl
inc ecx
and rbx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 13
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
add bl, cl
add bl, 63 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 29
cmp bl, 13
add dl, 118 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
cmovz esi, esi
mul rbx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
add al, 97 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 27
imul ecx, eax, 97
and rcx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rcx]
imul rsi, rdi
cmp di, dx
add bl, 38 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rdx
add dl, -10 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
imul esi, eax, 10
and rbx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rsi]
mov rax, -8696242625349627833
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -97
btc rbx, 18
btc dx, 16
sbb ebx, 61
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
cmovnp dx, dx
or sil, dil
sbb rsi, rcx
sub al, 50
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rcx
sbb dl, al
and al, -36
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], ax
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
add bx, 110
sub sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
