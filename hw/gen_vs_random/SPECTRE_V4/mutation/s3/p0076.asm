.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], di
sub cl, al
or cl, bl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rbx
adc ecx, ebx
adc sil, 111
and cl, -101
or al, cl
imul dx, ax, -115
and dx, dx
cmp cl, 59
sbb al, -4
cmovns di, cx
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
cmovnbe esi, ebx
adc rsi, rcx
and rdi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdi]
xor cl, bl
and rsi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
cmp al, cl
adc cl, -66
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
add ax, 17333
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
xor al, -40
xor al, 23
btr rcx, rcx
add al, -86 # instrumentation
cmovnp edi, esi
or cl, sil
btc rax, 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
