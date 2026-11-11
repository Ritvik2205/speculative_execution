.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -82
and rdx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdx]
or al, cl
and eax, -409673666
bt edx, ebx
cmp bl, 123
jmp .bb_0.1
.bb_0.1:
add sil, 44 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 76
and cl, 25
test dil, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
