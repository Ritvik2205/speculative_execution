.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
and rsi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rsi]
and dil, 58
and sil, 93
jmp .bb_0.1
.bb_0.1:
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
add di, 78
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rcx
jmp .bb_0.4
.bb_0.4:
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 99
jmp .bb_0.5
.bb_0.5:
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
