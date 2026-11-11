.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 67 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rbx]
sub al, -66
sbb cl, 105
inc edx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and dx, 46
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], cl
adc bl, -73
sub al, -66
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
or al, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
