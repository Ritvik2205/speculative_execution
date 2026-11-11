.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -6 # instrumentation
cmovo rsi, rax
add rcx, 32
sub al, 0
imul ecx, esi
xchg bx, bx
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 73
xor al, 99
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rdx], di
imul bl
movsx edi, di
imul sil
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], edi
add dl, 77 # instrumentation
cmovno dx, bx
add cl, -123 # instrumentation
sbb sil, 33
bt ax, 145
movzx rax, bx
neg al
bts dx, 26
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
cmovnp cx, cx
and rdx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdx]
test bl, cl
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
cmovnb si, bx
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], -7
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
xchg rdi, rax
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], -98
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], di
add eax, edx
and rsi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
or eax, -1213318393
mov al, 90
adc al, 41
adc sil, -112
sub rdi, 105
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dil
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], -103
and dl, dl
sub edx, -122
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dl
mul cl
sub rbx, rdi
xor dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
