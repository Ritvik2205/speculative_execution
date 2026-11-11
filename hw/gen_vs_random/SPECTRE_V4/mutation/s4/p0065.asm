.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], dil
xor ax, 13332
cmovnp edx, edx
adc rbx, rdi
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rcx
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
cmp al, dl
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 2
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
add al, 32 # instrumentation
adc rax, -324435035
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], -24
and rdi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rsi]
sbb bx, 87
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], ecx
mov eax, 1596316323
adc ax, 15251
cmp dl, al
mov dl, -124
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx]
add cl, 113 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
cmp dl, dl
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rax]
xor eax, 308288205
cmp al, -122
and rcx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rcx]
sbb sil, -11
add eax, 544045319
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
