.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -26
xor cl, sil
or rsi, 20
or sil, bl
xor cl, bl
and rcx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rcx]
bt eax, ebx
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
or sil, dl
test ebx, -2015966884
xor cl, bl
xor al, 34
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
