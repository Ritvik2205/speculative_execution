.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
or dl, -97
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
test bl, 65
jmp .bb_0.1
.bb_0.1:
and rax, 79
xor al, cl
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and rsi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
