.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -24
adc al, -82
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
sbb sil, dl
sub al, dil
add dl, cl
and rbx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rbx]
lea dx, qword ptr [rdi + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
