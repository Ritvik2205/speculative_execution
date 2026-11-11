.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc cl, 6
mov bx, 27738
add dl, -57 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rax]
sbb bl, -75
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], cx
and rdi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rcx]
sbb rdi, 9
imul rcx, rax
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 2
and ecx, 71
and rax, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
inc ax
sub ax, di
add rbx, rsi
cmovnbe rdi, rax
cmovbe eax, ebx
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rax
imul bl
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rsi
add edi, edx
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
cmovbe bx, cx
and rcx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 13
test ax, -14473
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], al
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 38
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], cl
movsx ebx, dil
xchg ecx, esi
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rdi]
cmovnz rax, rbx
mul dl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], edi
imul rsi, rax
cmovs rdx, rdx
and rdx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdx], -50
cmp eax, 512128713
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
cmovle rdi, rsi
and rcx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
