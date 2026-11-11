.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 12 # instrumentation
cmovnb edx, esi
cmp rdi, 55
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 90
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], di
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb eax, 125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
