.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 23633
xor al, 99
test cl, 0
and dl, bl
xor bl, dil
test ebx, -961564216
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
xor al, -4
xor sil, -14
xor al, 9
xor al, 122
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
xor rcx, -2
and al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
