.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 1
lea ax, qword ptr [rax + rsi]
sub bl, -96
test dil, -126
sbb ax, -9869
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rax]
xor dl, bl
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rsi]
xchg edi, eax
sub rax, 1806572419
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
