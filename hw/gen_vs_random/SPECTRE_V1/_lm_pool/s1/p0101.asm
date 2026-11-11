.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, al
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, cl
xchg sil, cl
lea rdi, qword ptr [rcx + rdx]
sub al, cl
lea rbx, qword ptr [rcx + rdx + 40]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
