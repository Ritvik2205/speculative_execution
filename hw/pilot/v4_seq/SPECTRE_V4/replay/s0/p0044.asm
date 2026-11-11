.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], edi
imul sil
movzx rax, bx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
bt ax, 248
cmovnb si, bx
adc sil, -112
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
add eax, edx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
add dl, 77 # instrumentation
cmovno dx, bx
mul cl
and dl, dl
test bl, cl
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], di
adc al, -117
sub rbx, rdi
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rdx], di
bts dx, 96
add cl, -6 # instrumentation
cmovo rsi, rax
xchg bx, bx
xor al, 124
xor dl, sil
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], -98
mov al, 7
and rdx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
neg al
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 74
imul ecx, esi
and rsi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rsi]
movsx edi, di
sub rdi, -34
sub edx, -122
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dl
imul bl
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], -7
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
add rcx, -61
sub al, 69
cmovnp cx, cx
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], -105
xchg rdi, rax
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rbx]
add cl, -123 # instrumentation
sbb sil, 33
or eax, 1001462340
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
