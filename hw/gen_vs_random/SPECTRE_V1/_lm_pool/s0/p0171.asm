.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
cmp bl, dl
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
sub al, sil
and al, dil
jmp .bb_0.1
.bb_0.1:
imul rbx
xchg rbx, rax
xchg edx, edi
mov al, cl
sbb bl, dl
xor ax, 913
lea cx, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
