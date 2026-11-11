.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103
xor al, -26
xor cl, dl
xor cl, 98
test esi, 1857129931
and sil, -9
or dl, 51
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
xor rdi, -9
btr bx, di
test bl, 65
xor al, dil
xor rsi, -117
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], di
or cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
