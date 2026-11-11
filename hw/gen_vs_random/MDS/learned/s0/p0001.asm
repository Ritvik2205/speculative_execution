.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, edi
test sil, dl
test al, dl
and dl, dil
test eax, -571234566
test rcx, -613256812
xor al, dl
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 84
or dx, 125
and esi, 11
xor sil, -15
test bl, -9
jmp .bb_0.1
.bb_0.1:
test dl, 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
