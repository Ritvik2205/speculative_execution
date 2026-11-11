.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx ax, cl
sbb bl, sil
cmovb esi, ecx
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], bx
cmovz edi, edi
add bl, -109 # instrumentation
sbb edi, 9
cmp cl, 8
test sil, sil
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 75
and rbx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rbx]
bts rsi, rsi
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
mul edx
add bx, 110
cmp cx, 41
and rdi, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rsi]
cmovp edx, edi
sub cl, cl
xor dil, 89
sbb bl, sil
and rdi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdi]
imul bl
cmp dl, 56
sub ecx, esi
xchg edx, ebx
test si, 11
add edi, eax
and rdi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdi]
cmovle ebx, eax
not ebx
sub edi, 32
add al, -71 # instrumentation
adc al, dl
add bl, -18 # instrumentation
mov rdi, rcx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, esi
sbb bl, 57
and rsi, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rsi]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb si, di
sbb dl, -99
bswap ebx
neg ecx
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
add cl, -37 # instrumentation
adc eax, -39
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
