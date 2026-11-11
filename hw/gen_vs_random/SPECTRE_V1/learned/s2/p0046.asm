.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
xchg al, bl
test al, sil
adc si, 6
add rsi, 109
or ebx, -124
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp eax, -240917296
lea dx, qword ptr [rsi]
sub cl, -21
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], bl
sbb al, 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
