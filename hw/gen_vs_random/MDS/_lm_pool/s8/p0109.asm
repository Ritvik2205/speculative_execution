.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edi, 248
bts rcx, rdx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
not dil
or sil, al
xor al, 8
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
btr bx, dx
and rax, -636362975
xor dil, cl
and rdx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdx]
test sil, -55
bt ax, dx
or sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
