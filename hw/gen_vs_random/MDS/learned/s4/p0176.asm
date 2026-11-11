.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 127
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and ax, 29207
and rbx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rbx]
xor al, sil
or dl, dil
test bl, -14
or dl, -97
and dil, bl
test dil, dl
test rdx, 61
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
