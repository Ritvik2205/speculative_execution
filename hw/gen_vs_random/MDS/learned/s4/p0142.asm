.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 24
test dl, 27
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
or dl, bl
xor bl, dl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and ax, -122
xor edi, 74
test dl, cl
or di, 3
xor cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
