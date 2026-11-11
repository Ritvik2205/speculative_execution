.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
cmovns si, di
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 15
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rax]
imul ax, si
or si, 0b1000000000000000 # instrumentation
bsf si, si
cmp sil, sil
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], ecx
btr di, 245
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
adc al, -70
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], 59
test dl, al
cmovz di, di
cmp ax, 28568
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
sub dil, dil
cmovl rax, rbx
sub dil, -28
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdx
movzx ax, dil
cmovnp cx, di
and rdi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdi]
add ebx, edi
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], esi
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdi
cmp ebx, -27
cmp al, -44
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -14
xchg si, di
xor cl, al
sub al, 0
adc al, al
test si, 36
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
mov bl, cl
bt ebx, edx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
mov dil, dil
and rdx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
