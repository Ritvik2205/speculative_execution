.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea ax, qword ptr [rax]
xor al, 78
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
cmp esi, 73
sbb al, dil
jp .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
