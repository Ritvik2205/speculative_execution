.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -103 # instrumentation
cmovbe cx, cx
and bx, 62
xor dl, bl
and sil, -69
test rdi, 41
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 9
test cl, 0
jmp .bb_0.1
.bb_0.1:
and dil, -39
and rcx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rcx]
and eax, 454700988
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -22
or dl, -21
or al, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
