.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov sil, 94
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dl
cmp rax, -1547540200
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], ax
movzx ebx, bx
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], edx
xor al, bl
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], -21
movsx eax, dl
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
cmp dil, -92
and rbx, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rbx]
mov al, 90
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
movsx eax, ax
add al, dil
cmovbe rax, rcx
bswap ecx
or ecx, 102
add bl, 76 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rsi
mov cl, dil
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], di
cmovnb edi, esi
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
xchg ax, dx
add cl, -23 # instrumentation
cmovno esi, edi
xchg ebx, edi
and si, -74
xor dl, cl
imul ax
cmp dl, al
add bl, al
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], cx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rcx], -31
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rax
cmovbe cx, dx
and eax, ecx
sub rdi, 105
and edx, 4
test edi, 2142010790
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], edx
imul ebx, ecx
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
