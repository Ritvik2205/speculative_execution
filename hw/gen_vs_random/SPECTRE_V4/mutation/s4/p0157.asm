.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
neg rax
sub al, bl
and rsi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rsi], rdx
and rdx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 123
btc rax, 124
bts di, dx
btr rcx, rcx
or ecx, eax
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
mov dl, dl
and rax, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rax]
or cl, sil
test ax, -23852
xor al, -60
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rbx
xor al, -66
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rdx
adc rbx, 60
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdi], eax
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 88
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
cmp bl, 12
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
bts dx, dx
add al, -86 # instrumentation
cmovnp edi, esi
and rdx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdx]
imul rdx, rdx
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
add ax, -9762
adc cl, -86
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], bx
xchg cx, ax
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -52
xchg rsi, rax
cmovnb bx, cx
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rbx]
sbb cl, al
xor esi, -112
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
