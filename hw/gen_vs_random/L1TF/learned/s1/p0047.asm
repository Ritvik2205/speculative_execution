.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -64 # instrumentation
cmovnle ebx, edx
xchg ebx, ecx
jmp .bb_0.1
.bb_0.1:
sbb dil, bl
jmp .bb_0.2
.bb_0.2:
lea rax, qword ptr [rdx + rbx + 78]
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], bx
test ax, 13879
jmp .bb_0.4
.bb_0.4:
lea rax, qword ptr [rdi + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
