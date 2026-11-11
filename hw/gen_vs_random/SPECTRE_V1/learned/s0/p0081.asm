.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 97
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rsi]
adc sil, -77
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
xchg rax, rbx
not si
jmp .bb_0.2
.bb_0.2:
test al, 48
jmp .bb_0.3
.bb_0.3:
test dl, -36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
