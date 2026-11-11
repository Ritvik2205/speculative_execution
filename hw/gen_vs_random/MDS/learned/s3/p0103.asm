.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 22
test al, 127
and al, sil
test al, bl
xor al, 9
or sil, dil
test esi, 1857129931
test rax, 1000448998
xor dl, 8
xor rax, -91
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
xor cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
