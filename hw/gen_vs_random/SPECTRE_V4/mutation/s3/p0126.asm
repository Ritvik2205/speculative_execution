.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, 32
and rsi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -18
sbb sil, 24
and ax, di
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edx
sub edx, ebx
and rsi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rsi], -55
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
bswap rsi
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rbx
and bl, cl
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 49
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
cmp dl, dl
mov bl, dl
mov bl, dl
cmovnbe rbx, rsi
and rdi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rax]
add ax, 6694
xor al, -40
cmovl rdi, rax
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 109
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
imul esi, ecx
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rdi
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -115
and eax, -1145483375
not eax
and rax, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rax]
imul edx, ebx, 1
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
add cl, 14 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
add al, -127
inc al
cmp rdx, rcx
cmovp ecx, esi
bt bx, di
and bl, al
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rdi
sub eax, -529389957
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
cmovo ax, ax
add cl, 9 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
