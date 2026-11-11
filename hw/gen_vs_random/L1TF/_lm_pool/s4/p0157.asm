.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 104 # instrumentation
mov edx, -377652802
sbb eax, -1165635662
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 5
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 65
jmp .bb_0.2
.bb_0.2:
inc eax
adc cl, dil
and rdx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rdx]
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
