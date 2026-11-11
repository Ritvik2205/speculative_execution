.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
setp al
lea ax, qword ptr [rax]
test sil, 97
or ax, 18658
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jno .bb_0.2
jmp .bb_0.3
.bb_0.2:
test cl, sil
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rdx
jle .bb_0.4
jmp .exit_0
.bb_0.4:
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
inc al
sub dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
