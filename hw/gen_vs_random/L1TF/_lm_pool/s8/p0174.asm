.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, dl
sbb cl, dl
cmp rdi, 36
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
test dil, -126
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
test dil, -126
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
