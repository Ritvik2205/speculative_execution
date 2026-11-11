.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -7
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 44
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and dil, 125
and dl, -73
or dl, 51
or dil, cl
test al, sil
xor al, dl
and dil, 125
xor si, 80
and sil, al
test edx, -1561252782
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
