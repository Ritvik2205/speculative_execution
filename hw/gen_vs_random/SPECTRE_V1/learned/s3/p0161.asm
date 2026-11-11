.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], dx
sbb cl, 105
cmp al, dl
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
xchg bl, al
or dx, 0b1000000000000000 # instrumentation
bsf bx, dx
sbb dil, cl
jle .bb_0.3
jmp .bb_0.4
.bb_0.3:
jns .bb_0.4
jmp .bb_0.5
.bb_0.4:
jnp .bb_0.5
jmp .exit_0
.bb_0.5:
sub dil, -111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
