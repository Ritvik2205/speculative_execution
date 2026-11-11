.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdx, rdx
sbb sil, cl
lea rdx, qword ptr [rdi + rbx]
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
sub dl, -48
add cl, sil
sbb esi, 73
and rdi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
