.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 8
or ax, 16560
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 18
or dl, -8
and bl, cl
jmp .bb_0.1
.bb_0.1:
or dil, -78
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
test ebx, -2015966884
test rax, 1978892575
and ax, 339
or di, 19
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
test rax, 337705873
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
