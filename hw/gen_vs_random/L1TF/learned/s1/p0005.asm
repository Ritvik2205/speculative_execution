.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 7954
cmp eax, 39856325
jmp .bb_0.1
.bb_0.1:
lea rsi, qword ptr [rax + rdi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
sbb bl, -88
and ax, 37
bt eax, edi
not eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
