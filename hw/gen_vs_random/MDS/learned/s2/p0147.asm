.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rax]
and cx, -8
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
jmp .bb_0.1
.bb_0.1:
and rax, 1886208862
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
jmp .bb_0.5
.bb_0.5:
xor al, -26
xor sil, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
