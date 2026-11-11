.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rdx
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and si, -70
sbb edx, edx
movzx ebx, ax
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -538885619
sub dil, dl
and rdx, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rdx]
imul ebx, eax
cmovbe rax, rbx
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -23
test dl, 114
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], eax
or rdi, -41
and rbx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], edi
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], bx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 25738
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 49
sbb dl, -62
imul di
xor dx, 7
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], al
or bl, al
mov rdx, rdx
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], eax
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -115
xor al, sil
xor cx, -80
and rax, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rax]
and cl, bl
xor rax, 944027678
and rdi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], dx
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], di
and rdi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdi]
sbb eax, 316213929
bt ebx, edx
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
cmovnz eax, edi
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
