.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov dl, cl
and rax, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rax]
and dl, 32
adc sil, al
sbb dl, dil
jmp .bb_0.1
.bb_0.1:
lea si, qword ptr [rdi + rcx]
or cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
