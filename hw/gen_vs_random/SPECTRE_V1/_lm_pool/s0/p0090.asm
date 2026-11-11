.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, -118
adc dl, 48
mov dil, cl
test dil, -116
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], al
mov al, bl
sub rsi, 97
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp sil, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
