.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
sub edx, 73
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
test al, al
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
cmovno eax, esi
or cl, cl
and rdx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -122
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rcx
and rbx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rbx], rsi
test cl, dl
imul rdx, rsi, 47
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
test edx, 1479885278
and sil, -84
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 70
and rdx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -122
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdx]
sub dl, 107
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], esi
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rax
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], ebx
test rsi, 59
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], bx
adc dil, dl
btc rdi, 18
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 75
add dl, -8
sub cl, dl
cmovnp rdx, rax
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rbx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
btc rdx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rcx]
and edi, -102
xor dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
