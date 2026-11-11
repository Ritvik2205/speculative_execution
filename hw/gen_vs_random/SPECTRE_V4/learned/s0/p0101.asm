.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 8 # instrumentation
adc al, dil
test bx, -1599
sub bl, al
cmovnp rdx, rdi
neg bl
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 95
adc dl, bl
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], bx
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], edx
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 90
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
adc edx, 94
xor dl, bl
lea ax, qword ptr [rcx + rdi]
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], esi
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
sub cl, 116
and rsi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rsi]
cmovnb ax, ax
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
cmovnp ecx, edx
or al, cl
xchg ecx, ebx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
add al, 112 # instrumentation
setl sil
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], dl
xor sil, dl
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
test eax, -558243208
and rax, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], ax
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
xor esi, edx
imul cl
xor al, 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
