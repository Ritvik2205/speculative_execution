.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, al
and ax, 2806
and rax, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rax]
dec al
add ax, 6656
mov dl, al
sub sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
