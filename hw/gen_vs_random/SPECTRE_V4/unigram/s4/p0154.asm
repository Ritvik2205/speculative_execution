.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub ecx, -107
adc edi, -83
cmovnp eax, ecx
or si, 85
bts cx, 135
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
adc bl, cl
add bl, -30 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
cmovbe rdx, rbx
sub ebx, edi
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], ebx
cmovnp ebx, ebx
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
xor cl, 88
and rax, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rax]
imul dl
and rdx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdx], rdi
and rsi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], rdi
and al, sil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 81
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dl
inc rdi
and rbx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 38
cmovnb eax, esi
cmp bx, 113
add cl, -77 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rsi
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdx]
bt dx, ax
cmovns bx, ax
movsx rdi, dl
sub rbx, 101
and rax, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rax]
add al, -27 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], cl
xor al, bl
and rdi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdi]
add rsi, 44
and sil, cl
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
