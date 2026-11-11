.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
adc sil, -77
sbb cl, dl
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, dl
sbb edx, -8
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
cmp ax, 7452
jnp .bb_0.3
jmp .exit_0
.bb_0.3:
add bl, bl
add al, -72
add al, al
test cl, -33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
