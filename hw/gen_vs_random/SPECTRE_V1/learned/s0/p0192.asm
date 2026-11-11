.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 76
adc ax, 24404
test al, bl
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rdi]
sub dl, 96
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], di
xchg rcx, rdi
sbb esi, 81
sbb ebx, 65
test al, 42
adc bl, -76
lea ax, qword ptr [rcx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
