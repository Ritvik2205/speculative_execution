.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
cmovnb rcx, rsi
add edx, esi
and rdx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], ax
sbb bl, -94
and rsi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rsi]
btr dx, cx
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], al
sbb esi, 20
xor al, sil
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], si
dec bl
imul rdi
cmp bl, sil
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], sil
sub rdx, 22
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rsi]
cmovnb edi, ebx
test cx, si
xchg ax, di
adc rax, 1542637830
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], eax
bswap rsi
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
movzx rdi, si
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 94
sbb ebx, 68
cmovle bx, cx
bt edx, edi
and rdx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rdx]
movsx ecx, dx
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
test edx, eax
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 13
add edx, edi
mul rbx
cmp rbx, 36
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
sub cx, 88
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
