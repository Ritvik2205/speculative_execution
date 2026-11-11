.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, sil
jle .bb_0.1
jmp .exit_0
.bb_0.1:
lea rdi, qword ptr [rdx + rdx + 32]
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
sbb al, 104
lea si, qword ptr [rbx + rcx + 45]
adc sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
