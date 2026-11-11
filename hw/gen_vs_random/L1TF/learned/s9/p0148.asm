.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
test sil, 29
or eax, -401020526
and sil, 37
sub cl, dil
or dil, -113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
