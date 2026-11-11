.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -126
test dil, -126
and eax, -409673666
jmp .bb_0.1
.bb_0.1:
xor dil, sil
setnle al
or dl, bl
and sil, sil
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
