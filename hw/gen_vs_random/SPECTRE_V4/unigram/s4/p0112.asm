.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb si, 59
sbb al, 32
xor bx, di
not cx
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btr dword ptr [r14 + rax], ecx
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rbx]
imul rbx
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], bl
and rbx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rbx]
add cl, 8 # instrumentation
adc dil, bl
bt edx, 4
mov edx, 74
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
sub ecx, eax
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
xor al, dil
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dil
cmovb rdi, rax
cmovns rdi, rdx
not cl
mov edi, -1544998000
cmp dil, dl
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rdi]
cmovns rax, rcx
cmovnb ecx, edi
cmovnp rdi, rdx
add dil, 16
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -70
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rsi
cmovle si, bx
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], eax
imul dl
adc al, sil
add cl, 119 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdx]
sbb bx, 91
test sil, 40
cmovnle ebx, ecx
cmovnle eax, edx
cmp edx, 79
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 68
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rsi
xor dl, 10
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 4
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], bx
cmovnp esi, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
