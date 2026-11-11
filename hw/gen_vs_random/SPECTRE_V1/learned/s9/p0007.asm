.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, edx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, ebx
sub dl, bl
and cl, 86
btc cx, di
adc dl, -49
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 3
and rax, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rax]
and sil, 111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
