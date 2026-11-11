.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx eax, dx
xor esi, 43
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 7
sub al, 26
and bl, dl
sub dl, -49
jmp .bb_0.1
.bb_0.1:
test sil, 29
sbb dl, -26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
