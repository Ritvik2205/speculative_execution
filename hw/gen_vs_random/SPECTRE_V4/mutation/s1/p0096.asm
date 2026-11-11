.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, ax
cmp rax, -120490246
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
cmp bx, si
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
cmovnp bx, bx
imul ax, cx
cmp cl, dl
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], ax
imul cl
mul dl
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
cmovz si, si
and rax, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edx
or dl, dl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rcx]
add cl, -82 # instrumentation
sbb si, dx
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
sub sil, -50
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -126
and rsi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rbx]
and rbx, 110
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
cmovnbe rax, rcx
add dil, 16
cmovnle eax, edi
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdi]
cmovle cx, bx
cmovz rcx, rdx
adc bl, dl
and sil, al
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], bx
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
xor eax, -437098167
neg sil
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
add dx, -90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
