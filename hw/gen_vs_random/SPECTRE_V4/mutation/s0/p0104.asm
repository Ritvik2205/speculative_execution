.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc dl, sil
cmovp esi, ecx
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
cmovnz cx, di
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -63
and ebx, -122
test dil, -58
cmovbe eax, esi
xor si, ax
sbb dl, cl
and rbx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], cl
sub al, dl
cmovno esi, edi
cmovnl rdx, rcx
mov cl, 1
and rsi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -127
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
cmovnp rsi, rdi
test bl, dl
add al, cl
or dil, 89
xor eax, 365940537
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rsi
add dl, -59 # instrumentation
movsx edi, bl
and si, -74
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rbx
add cl, 87 # instrumentation
cmovz edx, ecx
or cl, dl
sub dl, bl
and rcx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rcx]
cmovz di, dx
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 76
movzx esi, bl
sub rbx, rcx
mov bx, si
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
cmp dil, -29
adc rax, 310915511
sub bl, al
and rdx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
test rdx, rax
cmovbe rsi, rax
and rcx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rcx]
add rdx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
