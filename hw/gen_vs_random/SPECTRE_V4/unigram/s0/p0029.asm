.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -120 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rdx]
cmovs edx, eax
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], di
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
neg rax
sbb ax, di
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], -41
and cl, dil
xchg eax, ebx
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dil
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edi
xor esi, -112
cmp dil, -92
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 4
imul rcx, rdx, 6
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
add dl, dl
or sil, sil
xor dl, -66
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rax]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, esi
adc edx, esi
cmp al, cl
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dil
movsx rbx, dil
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
imul eax, ecx, -17
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 93
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rdi
and rdx, 0b1111111111111 # instrumentation
movzx rax, byte ptr [r14 + rdx]
or dil, dil
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and ax, 62
add cl, -75 # instrumentation
sbb ecx, 49
add dil, dl
adc cx, 96
test di, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
