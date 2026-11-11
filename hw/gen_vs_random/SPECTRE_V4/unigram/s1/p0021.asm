.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rdx, rsi
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
cmovp edi, ecx
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
test si, 33
sbb dil, bl
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 66
cmovnbe edi, edi
sbb rax, 1518549445
or si, -84
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 85
neg rax
movzx ax, bl
add bx, si
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 5
adc dl, 69
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 2
cmovnz eax, ecx
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], 50
or dx, 92
test rax, rbx
and rcx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
imul rax, rax
sbb bl, sil
sub dl, 107
and rcx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], cl
cmp cl, -80
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], -109
cmovle bx, ax
and rbx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
cmovnp cx, si
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
add bl, 7 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ecx
or sil, -47
sub bl, al
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdi
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 56
add bl, -39 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 69
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
