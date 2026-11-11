.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, 167244411
cmovp esi, ecx
cmovbe rsi, rax
test bl, dl
and rsi, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
mov cl, 1
cmovz di, dx
or dil, -104
test rdx, rax
or cl, dl
and si, -70
adc rax, 253624080
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], cl
cmovnl rdx, rcx
sub al, dl
sub bl, al
add rdx, rsi
and rdx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rdx]
xor si, ax
and rcx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rcx]
add cl, 87 # instrumentation
cmovz edx, ecx
cmovnz cx, di
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -63
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 76
cmp dil, 101
add al, cl
sbb dl, cl
and ebx, -122
movzx esi, bl
adc dl, sil
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rsi
and rcx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rcx]
cmovno esi, edi
sub dl, bl
and rbx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rsi]
mov bx, si
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -127
cmovnp rsi, rdi
add dl, -59 # instrumentation
movsx edi, bl
test dil, -26
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
cmovbe eax, esi
sub rbx, rcx
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
