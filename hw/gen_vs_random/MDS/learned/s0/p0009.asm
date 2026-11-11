.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -9
xor sil, 110
and eax, 454700988
test edx, -372470678
test rax, -1579405415
test edx, -1561252782
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
or sil, dl
xor cl, al
test bl, sil
and dil, -39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
