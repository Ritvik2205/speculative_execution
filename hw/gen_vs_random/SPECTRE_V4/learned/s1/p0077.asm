.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi]
or al, -16
adc bl, al
cmp dil, cl
cmp cl, 107
add bl, al
sub al, dl
sbb dl, -62
or rsi, -5
test dl, -102
cmp cl, sil
adc al, 43
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
adc eax, -689629357
sub al, 55
or al, -19
xor rax, -224991767
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
