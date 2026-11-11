.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
imul rdx, rdx
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rbx
and rax, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
neg rax
and rbx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rbx]
xchg rsi, rax
xor al, 23
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
or ecx, eax
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
bts di, dx
test ax, -14473
and rdx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
cmovnb bx, cx
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rdx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rbx]
btr rcx, rcx
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
xor esi, 66
sbb cl, al
adc rbx, 60
btc rax, 72
xchg cx, ax
cmp bl, -16
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], -65
bts dx, dx
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
add al, -86 # instrumentation
cmovnp edi, esi
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
sub al, bl
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rsi], rdx
add ax, 10655
or cl, sil
and rax, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rax]
adc cl, -66
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
xor al, 48
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 9
mov dl, dl
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], bx
and rdx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdi], eax
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 85
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
