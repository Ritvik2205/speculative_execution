.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rcx]
add dl, 12 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi]
add al, 122 # instrumentation
cmovns eax, edx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 30
cmp sil, 88
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], dx
test al, 66
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], dx
imul rdi
add sil, -75 # instrumentation
adc sil, 12
cmp ebx, 100
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
test dx, ax
add si, 4
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rcx
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
mul ax
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 57
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], 39
xor sil, 56
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
or dl, dl
sub dl, bl
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 75
movzx ecx, bl
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
test rbx, 18
cmovo rax, rax
bts esi, 241
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rcx]
not dx
and rbx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ecx
sub al, 98
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
sub al, 98
imul ax, si
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rcx]
cmovnbe ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
