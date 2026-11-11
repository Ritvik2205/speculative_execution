.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -22629
cmp eax, -240917296
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -6
and ax, 23118
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 25
and rdi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdi], 18
and rdi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdi]
and dil, 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
