.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, dl
sub dl, sil
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 30
cmovnz esi, ecx
test cl, -120
sbb bl, -41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
