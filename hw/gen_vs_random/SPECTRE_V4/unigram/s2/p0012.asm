.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
movzx rax, dil
cmovb rcx, rbx
test ecx, 57
xchg esi, ecx
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], esi
movzx bx, dl
xchg dl, al
cmp al, 19
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
add sil, dl
neg sil
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
bts ebx, ecx
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 46
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
imul rdx, rax
and dil, 96
xor dx, ax
cmovb edx, eax
add cl, -21 # instrumentation
adc rax, 71
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edi
cmp cx, si
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdi
mul rbx
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
add al, 118
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
imul ecx, edx, 81
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
cmovs rsi, rcx
cmp di, 79
imul ax, cx
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
and al, -127
and rcx, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rcx]
movzx di, sil
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rsi]
sbb dl, dil
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 57
and rcx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rcx]
mov rsi, rbx
imul esi, edi, 69
cmp edi, -104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
