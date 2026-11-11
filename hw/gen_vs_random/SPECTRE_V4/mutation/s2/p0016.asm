.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
or esi, 32
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
mov bl, dl
and rax, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rax]
sub eax, -494922880
and rax, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rax]
and eax, 1913354318
imul edx, ebx, 1
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
cmovo ax, ax
add al, -82
and rsi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rsi], -55
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rdi
xor al, -82
bswap rsi
and bl, al
sub edx, ebx
not eax
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -18
and rdi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdi]
mov bl, dl
cmovnbe rbx, rsi
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 31
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 65
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rbx
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rsi]
bt bx, di
cmovl rdi, rax
and bl, cl
sbb sil, -11
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edx
cmp rdx, rcx
cmp dl, dl
imul esi, ecx
and ax, di
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -23
add cl, 14 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
cmovp ecx, esi
add ax, -7857
inc al
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rdi
add cl, 9 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
