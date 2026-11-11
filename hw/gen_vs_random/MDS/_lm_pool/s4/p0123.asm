.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdi, rdi
xor al, 99
or al, cl
xor cl, 83
test al, cl
and rdi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], -22
jmp .bb_0.2
.bb_0.2:
or al, dil
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
or dil, -78
and eax, 454700988
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
