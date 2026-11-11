.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs si, di
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
sbb sil, bl
btc si, dx
jmp .bb_0.1
.bb_0.1:
cmovl rcx, rcx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
test dil, -126
and rbx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
