.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rcx, rbx
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], -41
add eax, edi
add dl, 31 # instrumentation
cmovnl bx, bx
sbb al, bl
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rcx
imul dl
sbb sil, sil
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rcx], eax
test bx, dx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rcx
adc eax, -1513455903
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
and rsi, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rsi]
or esi, 70
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rdi]
adc sil, sil
adc dil, sil
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rax
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 48
or ax, 0b1000000000000000 # instrumentation
bsr si, ax
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 31
test dil, 11
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
add al, 123 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rbx]
movzx di, al
cmovnp bx, ax
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ecx
sbb esi, 65
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 56
dec esi
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 72
xor si, bx
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], ecx
and rcx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rcx]
add cl, 122 # instrumentation
cmovz rax, rbx
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
sub dil, sil
adc bl, dl
and rcx, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rcx]
test bl, 0
and rcx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
