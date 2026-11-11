.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul esi, ecx
mov bl, dl
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
sbb sil, -11
cmovp ecx, esi
not eax
add ax, 10655
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rbx
bswap rsi
and rax, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rax]
xor al, -60
and bl, al
add al, 40
cmovo ax, ax
cmp rdx, rcx
and ax, di
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 31
sub edx, ebx
bt bx, di
and bl, cl
add cl, 9 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -23
and eax, -1948401947
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rdi
or esi, 32
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edx
inc al
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 109
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rdi
mov bl, dl
sub eax, -90064733
and rdi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
and rax, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rsi], -55
imul edx, ebx, 1
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
add cl, 14 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
cmovl rdi, rax
cmp dl, dl
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -18
cmovnbe rbx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
