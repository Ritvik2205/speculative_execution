.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 26813
or edx, 2
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor bl, cl
sbb eax, -403815802
and rdx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
cmovnp rax, rcx
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rax], di
sbb dil, bl
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
neg rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
