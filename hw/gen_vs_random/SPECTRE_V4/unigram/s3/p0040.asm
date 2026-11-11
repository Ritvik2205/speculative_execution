.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rdx]
or di, 0b1000000000000000 # instrumentation
bsf si, di
adc cl, sil
and rsi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rdx]
sub edx, -122
and rbx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rbx]
mul rbx
sbb edx, 82
test cl, -52
bt rdi, rcx
or edi, -64
sbb sil, -124
cmp cx, dx
and al, dil
and rcx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], dl
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rdx
and rdx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdx]
movzx rsi, ax
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 120
or bx, -33
bswap ebx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
imul eax
sub cx, -114
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
cmovz rbx, rsi
and rdi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rcx]
add dl, dl
movzx rcx, dx
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], eax
imul sil
test di, -19523
dec cl
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rdx
sbb dil, cl
cmovnz esi, eax
sub rbx, 101
and rsi, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
sub dl, 107
sbb ecx, 70
movzx rbx, si
and cl, -128
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
