.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -5
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
test dl, -37
jmp .bb_0.1
.bb_0.1:
and di, 98
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
adc bl, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
