.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, -31
and ax, -13240
xchg rdi, rbx
jl .bb_0.1
jmp .exit_0
.bb_0.1:
xchg ebx, ecx
and ax, 2806
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
