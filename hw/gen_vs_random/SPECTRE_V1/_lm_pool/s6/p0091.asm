.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rcx]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
mov cl, -72
lea cx, qword ptr [rsi + rdi + 65]
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
sub bl, -19
cmp al, dil
and cl, dil
sbb al, 66
and rdi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
not cx
or al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
