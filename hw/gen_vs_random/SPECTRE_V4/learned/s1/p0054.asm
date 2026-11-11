.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx cx, bl
add ax, 28666
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
cmp ax, 23131
test ax, -5170
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
sbb bl, al
and rbx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rbx]
or dl, cl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
add edi, edx
and rdx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rdx]
xor al, 56
lea cx, qword ptr [rax + rcx]
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rdx]
test dil, 73
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
and rax, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 84
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 42
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdi]
adc bl, cl
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
add ebx, 3
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
adc al, dl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
sbb bl, -94
xor sil, cl
bt edi, ebx
cmovnbe rbx, rcx
not dl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
mov cl, cl
and rbx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rbx], 15
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 6
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
cmovl rdi, rax
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
lea rax, qword ptr [rsi + rsi + 60]
cmovnbe ax, si
add bx, 110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
