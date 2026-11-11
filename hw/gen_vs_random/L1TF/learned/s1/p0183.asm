.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -37
sbb rdx, 98
test cl, 24
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dil
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 15
adc al, 70
not si
or rcx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
