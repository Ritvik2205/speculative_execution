.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -103 # instrumentation
cmovbe si, si
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
or al, -17
or cl, 39
or al, 16
test cl, al
xor dl, -19
and esi, 55
test rcx, -613256812
test cl, 91
jmp .bb_0.1
.bb_0.1:
test sil, dl
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
or rax, -689609688
test dil, -51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
