.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
lea rax, qword ptr [rbx + rdi + 73]
add dil, dl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
sbb edx, 105
jnle .bb_0.3
jmp .bb_0.4
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
jmp .bb_0.4
.bb_0.4:
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
add al, -109
mov sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
