.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 46
test cl, sil
or rdx, -48
or dil, al
or al, sil
test bl, -114
or rax, -141551502
test al, dl
xor sil, 94
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 94
or dil, -76
and bx, 69
and al, dil
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
