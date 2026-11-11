.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 9
or bl, dil
jmp .bb_0.1
.bb_0.1:
test dil, dl
test ebx, -2015966884
jmp .bb_0.2
.bb_0.2:
test eax, 1729060510
or cl, -36
test edi, -1252846009
or dil, al
and dl, bl
jmp .bb_0.3
.bb_0.3:
test dl, bl
test dl, 9
and dil, cl
test bl, dl
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
