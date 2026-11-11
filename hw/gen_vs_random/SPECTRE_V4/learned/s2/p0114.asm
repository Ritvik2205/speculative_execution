.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub sil, 71
cmp al, 115
cmp al, -106
xchg rax, rcx
imul eax, ebx, -12
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], cl
and rax, 1072797615
xor dl, bl
or al, cl
or ax, 7381
sub di, cx
or ax, -13633
adc sil, al
and al, 100
xor dil, sil
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and sil, dl
sbb cl, 35
xor dil, 117
sub dl, -16
and rax, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rax]
xor al, dil
cmp dl, bl
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 17
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
xor ax, 20236
adc sil, cl
xor ax, 45
and rsi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 119
adc bl, -58
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
