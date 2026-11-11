.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rdx, -19
and si, 91
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
loopne .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], dl
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
and bl, dil
jns .bb_0.3
jmp .exit_0
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
test cl, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
