.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -98 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], bx
adc sil, -77
sub sil, -18
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea bx, qword ptr [rax + rsi + 55]
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
cmp rdx, rcx
and sil, 111
jnle .bb_0.3
jmp .bb_0.4
.bb_0.3:
jle .bb_0.4
jmp .exit_0
.bb_0.4:
cmovs di, cx
lea rbx, qword ptr [rdi + rax + 65]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
