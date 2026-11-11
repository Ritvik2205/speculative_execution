.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, dil
neg rax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp al, dil
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
or bl, dl
sbb bl, sil
xor dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
