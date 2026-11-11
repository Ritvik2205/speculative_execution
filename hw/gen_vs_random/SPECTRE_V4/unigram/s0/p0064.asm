.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], al
xor di, -43
xchg rdx, rcx
sbb dl, -99
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 13
dec al
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
sub sil, sil
cmp cl, cl
xor dil, dl
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rbx], edi
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rdi], bx
test ebx, 1263899340
cmovle esi, edx
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
or edx, -127
and rdi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
sbb eax, edx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 37
cmovnb rcx, rbx
sub sil, dl
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
bt esi, 227
sbb esi, 71
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], bl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rcx]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rax
sub al, al
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
add cl, 106 # instrumentation
cmovnp rdi, rax
add rdx, rax
cmp bx, 8
add bl, -72
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add sil, -10 # instrumentation
mov si, 52
cmovnb edi, esi
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
sbb bl, sil
add eax, edi
cmovnp ecx, eax
cmovnb ecx, eax
imul rbx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rdi
sbb bx, 74
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
