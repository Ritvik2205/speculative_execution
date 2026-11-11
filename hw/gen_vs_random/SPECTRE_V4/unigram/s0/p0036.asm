.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 80
test ax, bx
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
or bl, dl
cmovns bx, ax
and rdx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rdx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edi
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
or edi, 6
cmovnb si, si
not dl
add dl, 31 # instrumentation
cmovnl cx, cx
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
xor bx, di
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
cmovnbe esi, eax
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 75
and rsi, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rsi]
cmp rbx, 56
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
movzx ecx, cx
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 67
and rbx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rbx]
add dl, -114 # instrumentation
cmovl ax, bx
test ebx, -595096626
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], cx
sub bl, 17
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 13
movzx rax, bx
sub esi, edx
imul bl
xor rsi, -3
adc cl, cl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 41
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
imul cl
sbb dl, -99
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 98
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
test dil, 73
cmovo si, di
xor edx, esi
and rdi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdi]
imul si, dx
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
