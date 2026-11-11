.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 36
lea rdx, qword ptr [rbx + rax + 93]
adc al, -92
test dil, -116
sub dl, bl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and sil, 11
add al, al
test dil, -116
cmp dil, al
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
