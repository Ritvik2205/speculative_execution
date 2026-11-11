.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test si, bx
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 30
jb .bb_0.1
jmp .exit_0
.bb_0.1:
sbb edx, -8
cmp dil, al
sbb bl, sil
test dl, -7
mov cl, bl
xchg ebx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
