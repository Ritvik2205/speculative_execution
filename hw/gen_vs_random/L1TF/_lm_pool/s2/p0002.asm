.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdi]
sub al, -75
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
jmp .bb_0.1
.bb_0.1:
add bl, 62 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
jp .bb_0.3
jmp .exit_0
.bb_0.3:
sbb edx, 23
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 7
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
sbb bl, -88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
