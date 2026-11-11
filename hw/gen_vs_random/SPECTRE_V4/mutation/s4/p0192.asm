.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 9
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
sub al, bl
add ax, 65
btc rax, 227
add al, -86 # instrumentation
cmovnp edi, esi
xchg cx, ax
imul rdx, rdx
cmp bl, -79
mov dl, dl
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rbx
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], bx
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdi], eax
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rbx]
btr rcx, rcx
neg rax
and rsi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rsi], rdx
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
adc cl, -4
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
xor al, -113
or ecx, eax
bts dx, dx
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 88
and rdx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rdx
and rax, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rax]
or cl, sil
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
adc rbx, 60
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 123
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
xor esi, 66
and rax, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rax]
sbb cl, al
cmovnb bx, cx
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
bts di, dx
test ax, -18054
xor al, -113
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rbx]
xchg rsi, rax
and rdx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
