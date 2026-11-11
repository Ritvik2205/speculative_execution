.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 71
test sil, 47
and eax, 933895314
lea ax, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rax]
adc bl, cl
jno .bb_0.1
jmp .exit_0
.bb_0.1:
mov dl, dil
test bl, -8
adc cl, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
