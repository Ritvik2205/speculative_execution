.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
mul cl
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], -43
imul bl
xchg bx, bx
cmovnb si, bx
adc sil, 88
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
bts dx, 26
cmovnp cx, cx
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
sub edx, 73
sub al, 96
xchg rdi, rax
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
and rdx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdx]
add cl, -6 # instrumentation
cmovo rsi, rax
mov al, 7
imul sil
neg al
add rcx, -61
and rsi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rsi]
xor al, 57
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rdx], di
and dl, dl
adc al, 116
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], -7
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dl
movsx edi, di
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], edi
xor dl, sil
sub rdi, -52
test bl, cl
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dil
add eax, edx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rbx]
or eax, -1779536330
imul ecx, esi
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
sub rbx, rdi
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], di
add cl, -123 # instrumentation
sbb sil, 33
movzx rax, bx
bt ax, 145
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], -105
add dl, 77 # instrumentation
cmovno dx, bx
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], -98
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
