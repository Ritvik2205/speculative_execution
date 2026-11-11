.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
sbb al, sil
sub al, -3
xor rbx, 11
jmp .bb_0.1
.bb_0.1:
test cl, 61
add al, sil
jmp .bb_0.2
.bb_0.2:
test rdi, rcx
sub ax, -27107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
