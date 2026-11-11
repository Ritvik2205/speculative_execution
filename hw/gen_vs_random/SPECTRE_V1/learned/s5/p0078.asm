.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -7
inc al
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
test al, 34
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 98
sub al, -89
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnp .bb_0.3
jmp .bb_0.4
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 76
jns .bb_0.4
jmp .bb_0.5
.bb_0.4:
loopne .bb_0.5
jmp .exit_0
.bb_0.5:
lea rax, qword ptr [rbx + rsi + 5]
and al, -23
xchg bl, cl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
