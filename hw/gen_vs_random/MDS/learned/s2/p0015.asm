.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edx, 189
or eax, -1777347252
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
test dl, -85
and dl, -73
jmp .bb_0.1
.bb_0.1:
test al, -81
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -6
or rsi, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
