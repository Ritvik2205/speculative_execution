.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -103 # instrumentation
cmovbe dx, dx
or sil, bl
or rdi, -11
jmp .bb_0.1
.bb_0.1:
or rbx, -77
test esi, 425331143
jmp .bb_0.2
.bb_0.2:
and ax, -12519
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
and sil, bl
or dl, -31
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
