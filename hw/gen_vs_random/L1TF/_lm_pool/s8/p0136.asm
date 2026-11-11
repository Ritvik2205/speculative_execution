.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 67 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdi]
or al, -5
sub al, 9
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
jmp .bb_0.1
.bb_0.1:
add bl, 89 # instrumentation
sbb al, cl
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
