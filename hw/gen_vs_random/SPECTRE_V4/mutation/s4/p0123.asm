.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc cl, -4
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
neg rax
and rsi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rsi], rdx
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdi], eax
cmp bl, -79
sub al, bl
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], bx
xchg cx, ax
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
and rdx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
xor esi, 66
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
adc rbx, 60
and rbx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rbx]
test ax, -23852
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rdx
and rax, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
xor al, 48
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -52
cmovnb bx, cx
and rdx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdx]
btc rax, 227
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rbx
mov dl, dl
add ax, 6694
or ecx, eax
bts di, dx
xor al, 55
sbb cl, al
imul rdx, rdx
xchg rsi, rax
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
add al, -86 # instrumentation
cmovnp edi, esi
bts dx, dx
or cl, sil
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 88
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
btr rcx, rcx
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
