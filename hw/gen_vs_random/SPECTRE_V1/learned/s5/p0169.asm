.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 12 # instrumentation
cmovnb eax, ecx
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], sil
sbb al, -112
sbb edx, 105
cmp al, dl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
lea rcx, qword ptr [rdx + rsi + 88]
lea di, qword ptr [rdx + rbx]
not bx
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], bl
or rsi, -14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
