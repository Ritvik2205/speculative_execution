.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], -40
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 5
test al, -75
and rax, -175411684
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rbx
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
inc dil
sbb al, 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
