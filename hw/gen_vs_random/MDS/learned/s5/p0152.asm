.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
or sil, dil
xor dil, dl
and dil, dil
test dil, 46
or al, -22
or rax, 52
or bl, al
test dil, -51
or al, -24
test rax, 1949278494
xor sil, 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
