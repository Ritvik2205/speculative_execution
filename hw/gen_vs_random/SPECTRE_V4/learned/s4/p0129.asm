.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 81
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
or dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdx
cmovnp di, si
mov dil, cl
add dil, 82
neg dil
bt di, di
and rsi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rsi]
cmovnb ecx, edx
cmovl rax, rcx
jmp .bb_0.1
.bb_0.1:
btc cx, 240
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 38
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 86
test ax, -5170
mov rsi, 68
btc esi, 56
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdi]
or cl, dl
movsx edi, bx
sbb al, -101
and sil, al
test cl, dil
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdx]
sub dil, -10
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rax]
xor al, -2
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], -69
and bl, dl
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
and rax, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rax], 35
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
add ebx, ecx
and rbx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rcx]
add sil, 110
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
xchg eax, edx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 99
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
sub dl, bl
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edi
or dl, dl
and eax, -24
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
sbb dl, dl
bt edx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
