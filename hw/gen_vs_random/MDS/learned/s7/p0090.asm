.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, -15
xor dl, -59
and al, sil
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
and bl, 68
or sil, -49
or dil, -71
and sil, -56
xor al, -89
xor dl, -19
test sil, -96
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
or al, -75
test dil, bl
xor bx, 78
xor rax, -1128378406
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
