.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
sbb dx, 57
and bl, -63
cmp rsi, 97
add rdx, rcx
test cl, -89
or dil, 30
sub dil, dil
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], 86
mov rax, -8696242625349627833
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
cmovz esi, edx
add dl, 118 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
cmp bl, 13
movzx rsi, ax
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], 75
cmovb esi, esi
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], sil
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 36
and rdx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rdx]
and bl, cl
sbb dl, -99
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
add bl, -71 # instrumentation
adc bl, cl
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
cmovl rax, rdx
cmovp esi, esi
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 50
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 36
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rdx], eax
and rbx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rbx]
mov cl, cl
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
bts rdx, rbx
cmp dl, 64
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
not esi
mov ebx, 5
btc rdx, 61
add sil, bl
sbb dl, -99
and bx, 95
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dil
and cx, 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
