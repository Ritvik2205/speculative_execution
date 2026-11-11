.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, al
and al, dl
sub rax, -1628299544
cmovno bx, si
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
adc cl, -81
sub bl, cl
cmp dl, dil
cmp dl, 119
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
