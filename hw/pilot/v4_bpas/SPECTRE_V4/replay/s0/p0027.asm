.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rdx
adc rbx, 60
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdi], eax
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
sbb cl, al
xor esi, -82
bts di, dx
cmp bl, -79
sub al, bl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rbx]
mov dl, dl
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
xchg rsi, rax
imul rdx, rdx
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
neg rax
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 85
and rdx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], -65
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], bx
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
bts dx, dx
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
adc cl, -85
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rbx
cmovnb bx, cx
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rax]
or ecx, eax
and rbx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rbx]
xchg cx, ax
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 9
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
add ax, 10655
test ax, 2960
and rsi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rsi], rdx
and rax, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
xor al, -82
xor al, -6
btr rcx, rcx
add al, -86 # instrumentation
cmovnp edi, esi
or cl, sil
btc rax, 227
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
