.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, al
test dil, sil
or di, 23
test cl, dil
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and dl, dl
or bl, -54
or al, dil
xor dl, dil
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
xor sil, cl
xor dl, 34
and ax, 27170
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
