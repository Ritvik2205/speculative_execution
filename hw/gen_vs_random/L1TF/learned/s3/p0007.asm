.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -126
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 86
or dl, -67
test al, cl
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ecx
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
setle al
test al, 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
