.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 91
or sil, al
or cl, cl
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
or dil, cl
test edi, -1252846009
cmovle di, dx
test dil, -80
test cl, al
or sil, -49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
