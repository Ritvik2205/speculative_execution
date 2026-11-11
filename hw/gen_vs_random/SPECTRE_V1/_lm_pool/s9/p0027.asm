.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 67 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
mov bl, sil
setns al
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp rbx, 31
test al, 84
lea dx, qword ptr [rbx + rcx + 2]
and al, al
sbb sil, al
and cl, 86
sub al, -66
cmp bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
