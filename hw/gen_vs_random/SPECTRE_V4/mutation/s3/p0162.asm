.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bl, 12
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 85
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
add ax, 6694
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], bx
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rdx
and rax, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rax]
btc rax, 72
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
bts di, dx
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
xor esi, -112
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 88
adc rbx, 60
xchg rsi, rax
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rbx
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 9
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
cmovnb bx, cx
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
or ecx, eax
bts dx, dx
btr rcx, rcx
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
sub al, bl
xor al, -84
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
neg rax
sbb cl, al
xor al, -60
test ax, 21107
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdi], eax
and rdx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdx]
or cl, sil
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rax]
mov dl, dl
adc cl, -86
add al, -86 # instrumentation
cmovnp edi, esi
xchg cx, ax
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
imul rdx, rdx
and rsi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rsi], rdx
and rdx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
