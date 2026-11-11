.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 113
sbb eax, -417098439
lea eax, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jp .bb_0.2
jmp .exit_0
.bb_0.2:
sub dil, cl
mov cl, al
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -122
sub dil, cl
cmp dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
