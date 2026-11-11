.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 59
jle .bb_0.1
jmp .exit_0
.bb_0.1:
mov al, dil
cmp bl, dl
xor dl, bl
sub al, dl
add dl, 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
