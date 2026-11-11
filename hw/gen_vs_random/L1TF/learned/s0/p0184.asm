.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -14 # instrumentation
lea ax, qword ptr [rdx + rbx]
xor dil, sil
or dil, al
xor cl, dl
jmp .bb_0.1
.bb_0.1:
neg dil
lea rdx, qword ptr [rax]
test ax, 13284
sbb dl, dil
or cl, 105
test bl, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
