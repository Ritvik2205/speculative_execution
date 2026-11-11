.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp edi, ebx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rcx]
imul eax, esi, 9
test cl, -89
bt edi, esi
sub sil, sil
cmovz dx, dx
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
cmovnl rdi, rsi
and rdx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rdx]
test eax, 1880179600
movzx rax, si
and rax, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rax]
mul cl
add edi, 11
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ecx
add dl, -75 # instrumentation
adc dl, 28
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
add cl, bl
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], 70
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdi
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rax
cmovb rcx, rax
test dil, 20
and rax, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rbx]
cmovo rcx, rcx
sbb ecx, 17
and al, dl
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx], 43
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
add dil, 97 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], 16
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
neg sil
adc eax, -79
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], di
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], bx
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
xor dl, dl
and rax, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rax]
add dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
