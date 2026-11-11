.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
and eax, -1056713114
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
cmovp ecx, esi
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rbx
and rsi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rsi], -55
inc al
cmovo ax, ax
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -23
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rdi
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
or esi, 32
sbb sil, -124
not eax
add cl, 9 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
xor al, -15
and bl, cl
mov bl, dl
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -18
imul esi, ecx
and rax, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 49
add al, 40
sub edx, ebx
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
bt bx, di
and bl, al
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edx
mov bl, dl
bswap rsi
imul edx, ebx, 1
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 109
cmovl rdi, rax
add cl, 14 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdi]
cmp rdx, rcx
add ax, -18924
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rdi
and ax, di
sub eax, -529389957
cmp dl, dl
cmovnbe rbx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
