.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], ebx
and rax, 452940266
and ax, -4410
or bl, -62
xor sil, -126
bt ax, cx
and dil, cl
and cl, al
and rax, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rax]
xor bl, al
or dil, -76
xor bl, dil
or sil, -78
xor dl, 34
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
