.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -13
xor al, -19
sbb cl, 105
test bl, -8
sbb eax, 1830317432
js .bb_0.1
jmp .exit_0
.bb_0.1:
test cl, -120
sbb sil, dl
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
lea ax, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
