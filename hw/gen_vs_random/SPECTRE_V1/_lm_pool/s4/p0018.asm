.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -36
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
lea rax, qword ptr [rbx + rcx + 6]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
lea rbx, qword ptr [rcx + rax + 86]
and sil, -55
sbb dl, sil
setns al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
