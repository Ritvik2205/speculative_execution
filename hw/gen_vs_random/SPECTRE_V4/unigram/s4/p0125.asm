.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], sil
or sil, sil
imul edx
cmovle rdx, rbx
and rbx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 52
cmovnbe rax, rcx
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], si
add cl, -58 # instrumentation
cmovnz esi, ecx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], eax
bt rsi, rsi
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], -74
sub rbx, 101
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], 47
sbb esi, 11
cmp sil, 127
cmovz bx, di
cmovo eax, esi
mov sil, 57
cmovnbe edi, eax
and rdx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 0
adc si, -74
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 25
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], rbx
and al, -87
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdx
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
cmp sil, 113
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rcx
sub bl, 66
or bx, 0b1000000000000000 # instrumentation
bsf ax, bx
xor al, cl
and cx, -117
mov dl, 81
and rcx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ebx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -51
add bl, -84 # instrumentation
cmovb bx, si
and rcx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
movzx rdi, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rax
test dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
