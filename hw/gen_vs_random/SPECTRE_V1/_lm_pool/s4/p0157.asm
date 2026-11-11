.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
lea ax, qword ptr [rax]
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and bl, -43
cmp sil, 25
sub bl, sil
jmp .bb_0.2
.bb_0.2:
add al, -72
sbb dil, -93
lea ax, qword ptr [rsi]
sbb bl, dl
sbb al, cl
sub dl, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
