.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdi]
xor si, -50
sub dl, -78
sub ax, -3178
sbb al, 61
add cx, 64
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
sbb cl, al
test dil, -126
xor dl, cl
lea si, qword ptr [rdx + rdx + 7]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
