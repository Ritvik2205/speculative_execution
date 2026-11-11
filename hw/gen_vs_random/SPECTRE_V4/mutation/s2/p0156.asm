.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, al
cmp dl, dl
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edx
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rdi
not eax
sub edx, ebx
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rdi
cmp rdx, rcx
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
cmovo ax, ax
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
add al, -32
and rax, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -49
and rsi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
add ax, 6694
and rsi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rsi], -55
mov bl, dl
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 49
inc al
cmovl rdi, rax
sbb sil, -124
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
or esi, 32
bt bx, di
add cl, 14 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
xor al, -82
sub eax, -865916088
imul edx, ebx, 1
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
add cl, 9 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rbx
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
imul esi, ecx
and eax, -2001076187
and bl, cl
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -23
bswap rsi
cmovp ecx, esi
cmovnbe rbx, rsi
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 65
mov bl, dl
and ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
