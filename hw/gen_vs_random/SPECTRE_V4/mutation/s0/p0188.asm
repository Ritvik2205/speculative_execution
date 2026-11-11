.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 19
cmovle rax, rsi
btr rcx, 134
imul ecx
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
adc eax, -983562873
add al, cl
sbb ebx, esi
and rsi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rsi]
add bl, bl
movzx rdi, sil
mul dil
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx], -68
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
and cl, bl
sbb al, 43
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rcx]
cmovo edx, edx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], cl
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], esi
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], edi
test ax, 21107
test cl, -119
and rsi, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 2
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
and rsi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rsi]
test bl, dl
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
and cl, cl
mov edi, -744634650
movsx eax, di
not bl
not dx
cmovns ecx, edi
adc cl, al
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
add rdi, 111
mov al, dl
add eax, 1017938146
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 6
or bl, dl
sbb al, cl
btc rsi, 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
