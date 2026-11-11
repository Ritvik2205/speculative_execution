.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
or dl, dil
and cl, 79
test dl, -95
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
xor dl, sil
or sil, dl
or al, dil
xor bl, -102
and cx, -2
jmp .bb_0.2
.bb_0.2:
test rdi, 35
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
