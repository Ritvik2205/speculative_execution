.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
add al, cl
xor ax, -17712
xor sil, 94
add bl, 54
or rax, -823069511
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
xor al, 124
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
xor dil, -23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
