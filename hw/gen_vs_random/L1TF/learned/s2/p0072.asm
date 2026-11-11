.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 82
jmp .bb_0.1
.bb_0.1:
xchg rbx, rax
and dil, -22
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 4
and rcx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
lea rax, qword ptr [rsi + rdi + 62]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
