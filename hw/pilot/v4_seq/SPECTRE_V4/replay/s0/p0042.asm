.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -59 # instrumentation
movsx edi, bl
cmovno esi, edi
sbb dl, cl
cmp dil, 101
test dil, -58
and rsi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rsi]
cmovbe rsi, rax
mov cl, 1
and ebx, -4
adc rax, -827748523
sub al, dl
cmovnz cx, di
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 76
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -63
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rsi
add al, cl
cmovbe eax, esi
cmovnl rdx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
add cl, 87 # instrumentation
cmovz edx, ecx
sub rbx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rbx]
sub dl, bl
sub bl, al
cmovp esi, ecx
test bl, dl
mov bx, si
xor si, ax
test rdx, rax
add rdx, rsi
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
cmovnp rsi, rdi
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
movzx esi, bl
or dil, 89
or cl, dl
and rdx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -96
xor eax, -48271836
and si, -70
adc dl, sil
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rbx
cmovz di, dx
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
