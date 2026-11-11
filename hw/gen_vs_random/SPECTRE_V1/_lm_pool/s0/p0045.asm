.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and dl, -109
adc ax, 24404
sub al, -66
jle .bb_0.2
jmp .exit_0
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
and dl, -111
lea cx, qword ptr [rdx + rax]
sbb dl, dil
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
