.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc bl, dil
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
xor edi, 82
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
imul esi, edi, 1
movzx ax, bl
and dl, 15
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rbx], eax
sbb dx, si
sbb cl, 20
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 100
imul eax
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rcx]
dec cx
mul rbx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
add al, -32 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rax]
adc sil, 89
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
not ax
not dx
adc bl, dl
cmovno eax, edx
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], ebx
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
bts ebx, ebx
and rax, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rax]
mov al, sil
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
cmovnz si, ax
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
imul rbx, rcx, 44
and rdx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdx]
sub al, al
cmovnp edx, edx
cmovns edi, edx
sbb al, sil
xor al, sil
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 1
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], di
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, ebx
and rdx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdx]
cmp bl, bl
and rdi, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
