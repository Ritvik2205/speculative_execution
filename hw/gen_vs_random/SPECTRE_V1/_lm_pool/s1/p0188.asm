.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -62
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
sbb dl, bl
jno .bb_0.1
jmp .exit_0
.bb_0.1:
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
and rdx, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdx]
lea ecx, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rbx]
and cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
