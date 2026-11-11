.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103 # instrumentation
cmovbe ax, ax
cmp rdx, -19
test dil, -116
cmp dil, al
test bl, -8
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
jp .bb_0.2
jmp .exit_0
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
