.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dl
sub dl, bl
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
add bl, -95
add sil, 2
xor cl, bl
sub dl, -48
jns .bb_0.2
jmp .exit_0
.bb_0.2:
add al, -47
lea rcx, qword ptr [rdi + rdx]
mov cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
