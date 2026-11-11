.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rdx, 36
bt ecx, 135
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], ecx
adc al, 41
cmovle rdx, rdi
and rdx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdx]
test cl, -52
sub cl, cl
sub ax, dx
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rcx]
imul rcx, rax
cmp dl, 95
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], rbx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
bts ebx, 189
add al, 42 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], dx
not sil
movzx rax, dx
cmovnb rax, rsi
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ecx
sbb dl, dl
or cl, 66
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
add bl, 95 # instrumentation
mov dil, 16
sub dl, -16
test dil, dl
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
and dl, -11
cmovz ebx, edx
cmovno esi, eax
sub edx, -122
cmovnz ecx, ebx
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi], 10
adc rsi, 82
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 78
movsx eax, ax
test cl, sil
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rbx]
xor al, cl
or dil, 89
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
