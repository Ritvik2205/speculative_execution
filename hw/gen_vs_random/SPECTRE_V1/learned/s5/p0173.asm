.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 93
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
add dil, 110 # instrumentation
cmovb rsi, rdi
lea ebx, qword ptr [rax]
cmp cl, sil
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub cl, bl
lea di, qword ptr [rcx]
jnz .bb_0.2
jmp .exit_0
.bb_0.2:
dec dil
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
