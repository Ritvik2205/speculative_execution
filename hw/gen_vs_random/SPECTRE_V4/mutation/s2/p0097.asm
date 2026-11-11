.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], ecx
xor rcx, rax
or bl, al
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -1913246407
and rbx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], dl
or bl, bl
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], -15
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdi]
bts ebx, 189
adc cl, cl
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 73
test al, -38
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
and eax, edi
imul rsi, rsi
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
cmovno esi, edx
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
sbb rdx, -43
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rsi]
add al, 46 # instrumentation
adc ax, cx
not bx
cmp dl, dl
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rax]
xor eax, 167244411
cmp al, -106
and rcx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rcx]
sbb sil, -124
add eax, 1017938146
and rax, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rax]
xor al, al
xor dx, -43
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx]
add cl, 53 # instrumentation
cmovnbe esi, edx
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
add bl, 76 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
inc edi
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edx
sub bl, 66
cmovle rdx, rdx
adc cl, al
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
