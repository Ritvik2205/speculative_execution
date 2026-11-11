.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and rsi, 29
and rsi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rsi]
cmp cl, 98
xor si, 41
mov rsi, 98
adc bl, 89
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
sbb bl, bl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
test cl, -89
and rcx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rcx]
bts esi, 241
cmp dil, dl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 48
sub si, cx
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], dx
adc al, bl
sbb al, sil
xor dx, 15
movzx ax, al
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
cmovnb bx, bx
sbb cl, dil
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 48
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
adc eax, -1513455903
sbb dil, cl
imul eax
adc bl, dl
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], di
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 75
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 53
movsx rdi, cl
not rbx
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 42
adc bx, -89
cmovb esi, ebx
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rcx
add al, 122 # instrumentation
cmovns esi, eax
and al, -36
cmovp ecx, ecx
cmovo ebx, eax
cmp cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
