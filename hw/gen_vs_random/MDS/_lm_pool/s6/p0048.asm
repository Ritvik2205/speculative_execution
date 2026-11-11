.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 37
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1626470119
xor bl, -27
test cl, -86
test eax, 424329527
xor al, 122
and edi, 23
or rcx, -17
jmp .bb_0.1
.bb_0.1:
xor si, 91
or sil, cl
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
