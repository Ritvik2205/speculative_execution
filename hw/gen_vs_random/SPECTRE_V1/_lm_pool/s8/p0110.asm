.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 4
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
xor bx, 47
lea rdi, qword ptr [rax]
add cl, -127
sbb bl, -41
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
sbb al, dil
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
