.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -92
test cl, -24
sbb al, 33
sub bl, cl
test bl, -8
cmp dil, -78
sbb cl, dl
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, -1
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
sub al, -66
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], sil
adc sil, -77
test ax, -30637
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
