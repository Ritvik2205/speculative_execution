.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, cl
test sil, dil
xor rbx, 89
and dil, -39
test dl, dil
and al, 75
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -103
xor cl, al
xor sil, dl
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
and cx, -8
or dil, -71
or rax, 1020005579
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
