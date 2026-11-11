.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], -105
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], di
mul cl
adc al, -117
test bl, cl
sub al, -84
adc sil, 88
bts dx, 26
movzx rax, bx
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], -98
add cl, -6 # instrumentation
cmovo rsi, rax
bt ax, 145
or eax, -1341747033
and rsi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rsi]
imul ecx, esi
xchg bx, bx
sub edx, 73
imul sil
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], edi
xchg rdi, rax
sub rbx, rdi
cmovnp cx, cx
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
sub rdi, 105
imul bl
add eax, edx
add cl, -123 # instrumentation
sbb sil, 33
and dl, dl
movsx edi, di
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
add rcx, -61
cmovnb si, bx
xor al, 99
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], -7
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rdx], di
neg al
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dil
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], -43
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dl
xor dl, sil
mov al, 7
add dl, 77 # instrumentation
cmovno dx, bx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
