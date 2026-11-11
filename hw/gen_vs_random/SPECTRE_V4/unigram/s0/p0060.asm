.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], cx
cmovnbe edx, ecx
and rbx, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rbx]
bts rax, rbx
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], cl
adc edx, 98
or dl, 88
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
neg cl
and rdi, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rsi]
add dl, 100 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdx]
bswap ebx
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
add sil, -75 # instrumentation
adc sil, 57
cmp dil, bl
cmovo rsi, rax
sbb sil, 108
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 96
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rdi
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
mul edx
xor dil, cl
xor bl, 93
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rsi], eax
or al, al
sub esi, 19
movzx di, cl
and rcx, -102
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
cmovnbe rcx, rcx
xor esi, 4
imul bx
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
not eax
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rcx]
or dil, al
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], 4
movzx eax, bl
sbb esi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
