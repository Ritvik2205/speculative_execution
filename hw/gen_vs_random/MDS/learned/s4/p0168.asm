.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, al
test sil, dil
xor sil, cl
test cl, 73
jmp .bb_0.1
.bb_0.1:
test dil, -51
xor rax, -404206377
not dl
and al, cl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
or dl, cl
jmp .bb_0.2
.bb_0.2:
or cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
