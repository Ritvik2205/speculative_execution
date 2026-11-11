.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 33
test cl, -120
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
jnl .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
add sil, -68
cmp dx, 94
sbb al, dl
sub cl, al
js .bb_0.3
jmp .exit_0
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
and ax, -22629
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
add edi, -91
cmovs ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
