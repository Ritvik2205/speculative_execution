.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -57
lea ax, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
test cl, 62
sub dl, -78
and sil, sil
and dl, bl
jmp .bb_0.1
.bb_0.1:
cmp di, -78
xor bl, cl
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
