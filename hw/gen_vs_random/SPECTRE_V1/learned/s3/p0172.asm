.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 86 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdx]
lea dx, qword ptr [rcx + rdx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
sub sil, -18
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
lea ax, qword ptr [rcx + rsi]
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
lea eax, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rbx]
sub dx, -23
and rsi, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rsi]
add bl, -95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
