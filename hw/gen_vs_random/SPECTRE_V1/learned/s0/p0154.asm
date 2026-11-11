.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 32540
sbb esi, 51
sbb ebx, 77
setns dl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
test al, -71
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 61
jl .bb_0.1
jmp .exit_0
.bb_0.1:
sbb sil, -78
and rdx, rbx
test dl, -36
sbb dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
