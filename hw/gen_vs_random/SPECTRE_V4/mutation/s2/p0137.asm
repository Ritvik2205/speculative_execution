.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
add al, -86 # instrumentation
cmovnp edi, esi
xor esi, -112
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
imul rdx, rdx
test ax, 21107
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rsi], rdx
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
sbb cl, al
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -52
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 123
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdi], eax
xchg cx, ax
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rbx
and rdx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rax]
add ax, -9762
cmp bl, -79
btc rax, 72
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
xor al, 23
and rdx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdx]
bts di, dx
mov dl, dl
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rdx
adc rbx, 60
or cl, sil
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
cmovnb bx, cx
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], -65
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
btr rcx, rcx
xor al, -113
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
neg rax
and rbx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rbx]
bts dx, dx
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], bx
or ecx, eax
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
xchg rsi, rax
sub al, bl
adc cl, 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
