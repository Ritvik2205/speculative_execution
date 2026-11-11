.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, al
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
cmp rdx, -49
adc al, 41
test cl, bl
xchg eax, edi
sbb bl, -75
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
xor ax, 13332
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 11
and al, 75
adc cl, 31
test al, bl
mov cl, bl
cmp rax, -47
mov bl, cl
mov dl, dil
xor al, dl
cmp cl, 49
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
