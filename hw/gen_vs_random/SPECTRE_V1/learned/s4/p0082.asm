.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 67 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rsi]
add dl, bl
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 92
cmp al, bl
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rbx
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
and dl, sil
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
sub dil, dl
xor dil, sil
cmp al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
