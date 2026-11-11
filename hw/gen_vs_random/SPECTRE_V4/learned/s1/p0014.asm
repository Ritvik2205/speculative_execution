.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
or al, -19
or al, al
adc cl, -54
dec cl
cmp eax, -813838876
sbb dil, sil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
xor al, cl
add dil, 105
add eax, 953442933
cmp al, -44
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
and ax, -4731
xor dil, -23
adc bl, 127
dec al
dec al
sub dl, -16
adc dl, 30
add al, -127
mov dl, al
sub sil, cl
add cl, dl
sub dl, 107
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and ax, -16777
sub cl, -127
adc bl, -20
sub dil, -11
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rsi]
and al, 75
cmp al, -53
sub rcx, 126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
