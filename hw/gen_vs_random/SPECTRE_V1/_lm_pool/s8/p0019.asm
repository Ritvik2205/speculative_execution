.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 2806
lea cx, qword ptr [rdi]
and cx, 35
or eax, 1276549484
sub bl, al
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
xchg rcx, rbx
add cl, cl
jmp .bb_0.2
.bb_0.2:
lea rax, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
