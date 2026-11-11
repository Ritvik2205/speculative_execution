.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, bl
xor dx, 20
test al, sil
test ax, 18697
test dil, -51
and al, 49
xor bl, -61
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
xor sil, -46
and al, 75
and al, cl
test cl, 62
or rax, 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
