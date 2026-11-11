.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 96
test dil, -126
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
test sil, dl
and dil, sil
sub bl, -96
and cl, 42
and cl, dl
jmp .bb_0.1
.bb_0.1:
test bl, 84
cmp dil, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
