.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edi, si
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
lea rsi, qword ptr [rbx + rdi + 34]
test dil, -116
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
xchg dl, cl
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
lea cx, qword ptr [rax + rsi]
bt edi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
