.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 87
and bx, 74
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 6
jmp .bb_0.1
.bb_0.1:
or dil, -76
or ax, 16560
or dil, -78
test al, sil
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
test esi, 1857129931
test rbx, 26
test dil, -80
and rax, 452940266
jmp .bb_0.2
.bb_0.2:
test al, 127
cmovle si, cx
or al, dl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
