.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
sbb al, 104
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rcx]
js .bb_0.2
jmp .exit_0
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
mov dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
