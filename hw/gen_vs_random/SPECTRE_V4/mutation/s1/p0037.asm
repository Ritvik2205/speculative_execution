.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
cmp rdx, rcx
cmovo ax, ax
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rdi
and rdi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdi]
and bl, al
add cl, 9 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rbx
and rax, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rax]
add al, -4
sbb sil, -11
and bl, cl
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], -49
or esi, 32
bswap rsi
cmovp ecx, esi
sub eax, -865916088
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -23
inc al
and rsi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 49
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -49
mov bl, dl
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rdi
add cl, 14 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
cmovnbe rbx, rsi
cmovl rdi, rax
not eax
sub edx, ebx
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
and ax, di
and rax, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edx
imul esi, ecx
bt bx, di
cmp dl, dl
mov bl, dl
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
xor al, -82
imul edx, ebx, 1
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
add ax, -7857
and rsi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rsi], -55
and eax, -2040347881
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
