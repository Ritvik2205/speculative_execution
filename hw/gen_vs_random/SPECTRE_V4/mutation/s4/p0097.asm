.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnl rdx, rcx
and rsi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
sub dl, bl
movzx esi, bl
test rdx, rax
sub al, dl
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -96
add dl, -59 # instrumentation
movsx edi, bl
xor si, ax
add al, cl
cmovp esi, ecx
cmovno esi, edi
adc dl, sil
cmovnp rsi, rdi
sub bl, al
or cl, dl
cmovbe eax, esi
xor eax, 1185843233
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -63
cmovz di, dx
and ebx, -122
adc rax, 1873854064
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 76
and rdx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rcx]
cmovbe rsi, rax
mov cl, -38
and rcx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rcx]
sub rbx, rcx
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rbx
and si, -74
sbb dl, cl
or dil, -104
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
add rdx, rsi
test bl, dl
add cl, 87 # instrumentation
cmovz edx, ecx
cmovnz cx, di
and rbx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
cmp dil, 101
and rsi, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rsi]
test dil, 64
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], cl
mov bx, si
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
