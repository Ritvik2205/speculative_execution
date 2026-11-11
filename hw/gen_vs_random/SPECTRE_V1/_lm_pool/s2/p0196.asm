.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 14
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
btc eax, 51
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
xchg sil, cl
jnz .bb_0.3
jmp .bb_0.4
.bb_0.3:
adc ax, -614
jp .bb_0.4
jmp .bb_0.5
.bb_0.4:
jns .bb_0.5
jmp .exit_0
.bb_0.5:
sbb al, 49
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
