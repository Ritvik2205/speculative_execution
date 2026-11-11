.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx esi, si
cmovle rdx, rdi
sbb edx, 19
cmovnz si, bx
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb ax, si
sbb dl, al
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 5
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], di
sbb bl, sil
sub dl, 43
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 44
add di, -74
test dl, bl
cmp rsi, 16
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rcx
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
test ax, -5170
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 81
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], di
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rsi], edi
and bl, dil
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
cmovns di, di
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
cmovnbe si, ax
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], ecx
imul rbx
and rcx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rcx], 98
sub al, 99
mov rax, rbx
btc cx, 240
and rax, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], cx
adc ebx, 117
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], 27
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
cmp rbx, 16
xor al, dl
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], si
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], bx
xor ebx, 43
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
sub al, 98
cmp rdx, 58
add ax, 28666
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
