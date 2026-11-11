.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, bl
add dl, -59 # instrumentation
movsx edi, bl
and si, -74
and rsi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rsi]
mov cl, 14
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
add rdx, rsi
cmovbe eax, esi
cmp dil, 53
cmovnl rdx, rcx
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
sbb dl, cl
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -127
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
cmovnz cx, di
cmovbe rsi, rax
sub al, dl
or dil, -16
test bl, dl
and rcx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rcx]
add al, cl
and rdx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rdx]
mov bx, si
and ebx, -122
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -63
cmovno esi, edi
movzx esi, bl
test rdx, rax
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], cl
xor eax, 1760581269
and rcx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rcx]
add cl, 87 # instrumentation
cmovz edx, ecx
or cl, dl
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 76
sub bl, al
sub rbx, rcx
xor si, ax
and rbx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rbx]
adc dl, sil
cmovp esi, ecx
test dil, 64
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rbx
cmovnp rsi, rdi
adc rax, 1682231791
and rsi, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rsi]
cmovz di, dx
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
