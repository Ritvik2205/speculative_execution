.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts dx, 26
cmovnp cx, cx
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rdx], di
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dl
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
xor dl, sil
sub edx, -122
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
mul cl
neg al
add rcx, -61
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], di
sub rdi, -52
add cl, -6 # instrumentation
cmovo rsi, rax
and rsi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rsi]
adc al, -86
add dl, 77 # instrumentation
cmovno dx, bx
imul sil
movzx rax, bx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
xor al, -82
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 74
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], edi
add cl, -123 # instrumentation
sbb sil, 33
imul bl
or eax, -1779536330
movsx edi, di
cmovnb si, bx
sub al, 59
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dil
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], -7
imul ecx, esi
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], -98
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], -105
sub rbx, rdi
test bl, cl
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
add eax, edx
mov al, -93
and dl, dl
and rdx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdx]
xchg bx, bx
xchg rdi, rax
bt ax, 248
adc sil, -63
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
