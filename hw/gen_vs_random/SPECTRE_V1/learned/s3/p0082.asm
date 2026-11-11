.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, dx
and dl, -109
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
adc ax, 24404
and dil, sil
js .bb_0.2
jmp .exit_0
.bb_0.2:
xor dl, al
add dil, 72
cmovle rcx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
