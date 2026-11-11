.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 18 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
imul esi, edi, -24
bswap rsi
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 2
imul rax, rcx
cmovbe rbx, rax
and bl, -119
and rsi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rsi]
imul sil
add al, 20 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rax]
adc dl, 67
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 6
add cl, -119 # instrumentation
sbb edx, 47
xor edx, edx
sub bx, 24
or rdx, rsi
adc dl, dil
cmp dl, bl
add dl, 45 # instrumentation
cmovbe rbx, rsi
and cl, -128
sbb cl, 40
adc dl, dil
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi], 62
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdi]
cmovbe ecx, ecx
cmovle ebx, edi
test dx, 28394
xor sil, 74
add bl, al
dec bx
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rbx
or dl, -26
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 64
cmovnz cx, ax
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
add al, -112
cmp sil, 127
add rcx, rax
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdx
add al, -71 # instrumentation
cmovb rdx, rbx
or bx, 0b1000000000000000 # instrumentation
bsr bx, bx
cmovo ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
