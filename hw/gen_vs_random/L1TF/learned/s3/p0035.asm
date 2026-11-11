.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dil
xor rax, 20
jmp .bb_0.1
.bb_0.1:
test cl, 79
and rcx, 38
adc dx, 40
jmp .bb_0.2
.bb_0.2:
add al, 56
and dil, -22
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
setno dil
sbb dl, -26
sbb rcx, 48
test rdi, 83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
