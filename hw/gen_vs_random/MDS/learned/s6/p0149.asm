.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
or edx, edi
or sil, dil
test rax, 1000448998
and dil, al
and cx, -8
jmp .bb_0.1
.bb_0.1:
test al, -7
xor sil, -126
and cl, -6
and sil, sil
bt edx, ecx
xor dl, al
and ax, -12519
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
