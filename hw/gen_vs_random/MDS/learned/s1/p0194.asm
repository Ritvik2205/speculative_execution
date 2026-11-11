.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 123 # instrumentation
cmovo ax, cx
and dil, sil
jmp .bb_0.1
.bb_0.1:
not sil
test dil, 46
test rcx, -613256812
jmp .bb_0.2
.bb_0.2:
and al, al
and dl, al
or bx, 45
test ax, 6779
or al, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
