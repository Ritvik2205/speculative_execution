.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 12 # instrumentation
cmovnb edx, ecx
add eax, 1518653812
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], cx
sub sil, -18
adc dl, -49
test cl, -120
adc al, -82
and rcx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rcx]
sbb sil, -78
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
