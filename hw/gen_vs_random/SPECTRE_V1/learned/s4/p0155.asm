.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, ebx
mov al, sil
sub al, bl
lea si, qword ptr [rbx]
sbb bl, dl
sbb dl, bl
test bl, -8
and rbx, rax
and bl, -43
sub al, -1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
