.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ax, ax
and dil, -114
and rax, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rax]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp al, cl
and al, 33
jp .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
