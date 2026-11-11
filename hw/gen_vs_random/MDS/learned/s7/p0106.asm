.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, eax
xor sil, dl
jmp .bb_0.1
.bb_0.1:
test rax, -2004802425
and bl, sil
test rax, -648054011
and ax, 13090
not al
or sil, -78
jmp .bb_0.2
.bb_0.2:
or edx, esi
xor bl, 67
or al, dil
xor rbx, 89
and sil, -56
or al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
