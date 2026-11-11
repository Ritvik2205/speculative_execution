.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dil
xor ecx, 8
or bl, al
or dl, -31
xor dl, 40
test dl, -95
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
or dl, bl
xor cl, dl
test dl, 9
or cl, -77
or cl, -36
xor dil, cl
xor dl, al
and dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
