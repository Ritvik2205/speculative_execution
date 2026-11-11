.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
test dil, -80
xor dil, -5
test al, cl
and dil, cl
or sil, -78
xor sil, -14
and al, bl
jmp .bb_0.1
.bb_0.1:
or al, 54
and rax, 1886208862
and al, -114
and sil, bl
test dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
