.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
not bl
test dil, -80
and rbx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rbx]
or dil, -78
or rcx, 54
test esi, 425331143
xor sil, 110
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
xor sil, -15
test ebx, -961564216
and rcx, -63
or dl, -31
test cl, 101
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
