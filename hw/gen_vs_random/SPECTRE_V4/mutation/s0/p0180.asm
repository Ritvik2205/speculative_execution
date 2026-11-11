.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dl, dl
and bl, cl
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -18
cmovnbe rbx, rsi
and bl, al
xor al, 23
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -23
and rax, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rdi
add al, -29
and ax, di
sub edx, ebx
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
or esi, 32
sbb sil, -11
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 31
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rbx
mov bl, dl
and rax, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rax]
and eax, -1948401947
imul esi, ecx
cmovl rdi, rax
cmovo ax, ax
sub eax, -1804712207
and rsi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
add cl, 14 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
bswap rsi
inc al
add cl, 9 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rax]
add ax, 6414
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
cmovp ecx, esi
and rsi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rsi], -55
cmp rdx, rcx
not eax
imul edx, ebx, 1
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edx
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
mov bl, dl
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 65
bt bx, di
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
