.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 67 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rsi]
test dl, -36
sub dl, al
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
cmp dil, sil
btr rax, rbx
lea rdi, qword ptr [rbx + rsi + 73]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, al
sbb sil, -78
and rsi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
