.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc rdi, rcx
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
and di, -65
add bl, -39 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 25738
mov sil, 63
sub cl, -119
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
cmovbe rbx, rcx
cmp bl, 12
and rbx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rbx]
and rdx, 84
xor al, dil
sub rax, 1294268026
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 4
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], 46
cmovnl bx, dx
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 38
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 4
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rcx
and rbx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rbx]
add cl, cl
cmovnp esi, edx
and sil, dl
sbb cx, 29
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
xchg ax, bx
and cl, -118
imul rsi, rax, 59
imul dx, dx
cmovle rbx, rdi
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 36
bt esi, eax
sbb rax, rsi
test al, al
and rbx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rbx]
test dl, -125
cmp dx, -26
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], cl
cmovnz rsi, rbx
mov sil, al
mul al
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -681182795
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
