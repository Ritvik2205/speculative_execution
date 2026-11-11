.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdx]
lea rdi, qword ptr [rbx + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rbx]
sub al, -47
btr rcx, 61
and dil, -22
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
jmp .bb_0.1
.bb_0.1:
sets al
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
