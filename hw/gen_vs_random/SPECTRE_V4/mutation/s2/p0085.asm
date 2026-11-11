.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, cl
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 109
and rdi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdi]
or esi, 32
bt bx, di
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -18
and ax, di
imul edx, ebx, 1
imul esi, ecx
mov bl, dl
cmovnbe rbx, rsi
xor al, -113
sbb sil, -124
add al, 40
add cl, 9 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rax]
cmovl rdi, rax
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 49
cmovp ecx, esi
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rdi
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rdi
add ax, -9762
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edx
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
bswap rsi
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
cmovo ax, ax
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
and bl, al
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
and eax, -1056713114
and rax, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rsi]
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
add cl, 14 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
not eax
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -23
sub eax, -494922880
cmp dl, dl
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
sub edx, ebx
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rbx
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
inc al
and rsi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rsi], -55
cmp rdx, rcx
mov bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
