.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
sbb al, -62
movzx dx, dl
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], esi
sbb dl, bl
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
add rcx, rax
sbb eax, -984782068
and cl, 58
xor cl, bl
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 16
btc eax, edx
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
cmp sil, 88
test bl, dil
cmovz edx, edi
cmovz edx, edi
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
or sil, al
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
cmovz esi, ecx
cmovnb esi, eax
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
cmovnbe rax, rsi
test ebx, -595096626
adc dl, dl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
movzx ecx, sil
add al, 5
sbb bl, 57
sub sil, -36
and rdx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rdx]
sbb eax, 4
or bx, cx
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
cmovb edx, edi
bswap edi
and rcx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 26
and rax, 97
cmovp cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
