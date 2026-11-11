.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdx]
lea rcx, qword ptr [rdi + rdx]
test al, dil
sbb sil, -78
sub al, -82
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
sbb dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
