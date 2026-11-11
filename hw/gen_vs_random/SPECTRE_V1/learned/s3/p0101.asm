.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], 79
cmp al, 13
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
adc dl, dil
mov dl, dil
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
jns .bb_0.2
jmp .exit_0
.bb_0.2:
cmp al, 77
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
adc eax, 56
xchg edi, eax
sbb al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
