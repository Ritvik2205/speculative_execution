.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rcx, rcx
xor al, -15
adc rbx, 60
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
mov dl, dl
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
test ax, -6841
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 85
xor al, 23
xor esi, 66
sbb cl, al
bts dx, dx
cmovnb bx, cx
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rbx
sub al, bl
neg rax
and rdx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rbx]
imul rdx, rdx
and rax, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
cmp bl, 12
xchg rsi, rax
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 88
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
btc rax, 227
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rdx
bts di, dx
add al, -86 # instrumentation
cmovnp edi, esi
xchg cx, ax
or cl, sil
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rsi], rdx
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], bx
add ax, -18924
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdi], eax
or ecx, eax
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 9
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rax]
adc cl, -66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
