.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rdi
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
add ax, 17333
imul edx, ebx, 1
mov bl, dl
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rdi
sub edx, ebx
and rsi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rsi]
not eax
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
sub eax, -494922880
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 65
and ax, di
sbb sil, 24
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -115
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
mov bl, dl
cmp rdx, rcx
and rax, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rax]
imul esi, ecx
and bl, al
or esi, 32
inc al
and rsi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rsi], -55
cmovo ax, ax
cmovl rdi, rax
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 49
cmovp ecx, esi
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
add cl, 14 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
and eax, -1145483375
cmp dl, dl
xor al, -120
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
bswap rsi
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rbx
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -49
add al, -112
cmovnbe rbx, rsi
add cl, 9 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rax]
bt bx, di
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
and bl, cl
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
