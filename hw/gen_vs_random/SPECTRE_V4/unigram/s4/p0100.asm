.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdx]
add cl, -84 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], bx
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rdi
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 1
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], -652712956
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], sil
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, eax
adc rax, 2071185388
or dl, -26
movsx cx, dil
test rax, -813666773
sbb bl, -98
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], sil
and rbx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rbx]
btr eax, ebx
and dx, cx
sbb dx, cx
imul edx, ecx
cmovnb eax, edx
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rbx
or dl, bl
or dl, cl
add al, -29
cmovnp esi, edx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dl
add sil, -7 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
sub ecx, esi
and rbx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rbx]
add cl, 31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], dil
dec dl
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 73
and cl, dil
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], cl
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and al, sil
and di, -34
and ecx, 71
and rcx, 0b1111111111111 # instrumentation
not word ptr [r14 + rcx]
cmovl ecx, eax
mov dl, dil
add dl, -55 # instrumentation
cmovnbe ebx, ecx
test ecx, -1293796332
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
