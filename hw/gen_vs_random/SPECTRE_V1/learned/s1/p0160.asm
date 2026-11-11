.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
or bl, al
test rdx, 1657596343
add cl, sil
cmp cl, dil
cmp dil, al
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
add edi, -91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
