.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx rdx, byte ptr [r14 + rax]
sbb cl, -11
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
sbb dl, bl
or edx, 90
cmp sil, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
