.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, dil
and ax, 19224
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
xor bl, sil
or dil, 12
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
or rax, -141551502
jmp .bb_0.1
.bb_0.1:
or bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
