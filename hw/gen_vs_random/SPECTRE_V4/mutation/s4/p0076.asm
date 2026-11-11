.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt eax, 103
and si, dx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -1481110162
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], ecx
sub ax, 6579
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], -59
sub rdx, rdx
mov eax, -1056201206
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], esi
adc al, dl
or edx, edi
or rax, -2144083737
adc bl, al
test al, 57
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rdi
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rbx
xor bx, -65
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
and rbx, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rbx]
movzx rdi, bx
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
sub eax, -865916088
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
and rax, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rax]
inc al
bswap rsi
imul esi, ecx
not eax
sub edx, ebx
cmp dl, dl
cmovp ecx, esi
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
sbb sil, 24
and bl, al
xor al, 99
mov bl, dl
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
mov bl, dl
and ax, di
cmovl rdi, rax
and rsi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rsi], -55
add cl, 14 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rdi
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
and bl, cl
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
