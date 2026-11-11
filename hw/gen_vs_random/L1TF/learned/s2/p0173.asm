.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edi
and ax, 26813
test cl, 22
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 8
jmp .bb_0.2
.bb_0.2:
lea si, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
