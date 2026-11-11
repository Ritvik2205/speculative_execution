.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -36 # instrumentation
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], ecx
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdi], 28
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
mov dx, cx
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], 124
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 20
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
sub rcx, -90
cmovns cx, bx
cmovnb eax, esi
movzx rax, ax
sub rax, 1806572419
jmp .bb_0.1
.bb_0.1:
imul rbx, rax, 6
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], -100
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
xor eax, ecx
lea ebx, qword ptr [rsi + rbx + 65254]
add dl, al
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rsi
xor ax, -16232
sbb sil, 19
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
