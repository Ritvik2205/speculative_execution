.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 119 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdx]
xor sil, 56
mul cl
cmp sil, cl
or dl, dl
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
and cl, dl
cmovnle bx, bx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe ecx, ebx
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], edx
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdx], esi
xor eax, -437098167
imul ebx, ecx
cmp cl, 64
add cl, -32 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rcx]
sub edi, eax
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
neg rcx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdi
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rbx
cmovb ecx, esi
test bx, -1599
movzx rbx, cx
sbb ax, bx
imul bx
and cl, 58
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
add cl, -21 # instrumentation
adc rsi, 75
add dl, 48 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], al
adc edx, 84
and rdi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdi]
add bl, -18 # instrumentation
mov rdx, rdi
and rdx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdx]
cmovle rax, rsi
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 86
and rax, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
cmovnb edx, eax
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
add dl, 41
and rax, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rax]
movzx di, dil
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], -20
sub bl, sil
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
