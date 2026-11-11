.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
sbb sil, sil
and dl, cl
sbb dl, cl
and rdx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rdx]
test ax, 13879
or dil, -113
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], cl
jmp .bb_0.2
.bb_0.2:
lea rdi, qword ptr [rdx + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
