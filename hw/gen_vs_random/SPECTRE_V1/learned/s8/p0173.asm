.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc bl
sub cl, -21
sbb dil, bl
cmp ax, 7046
xor al, dl
sub bl, cl
cmp sil, dil
lea rbx, qword ptr [rdx + rax]
add cl, -127
or rax, -3
lea rax, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
