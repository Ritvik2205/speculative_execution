.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
sub cl, -21
sbb al, 66
xor al, dil
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
xchg cl, sil
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
sub dx, -23
jmp .bb_0.1
.bb_0.1:
test dil, -116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
