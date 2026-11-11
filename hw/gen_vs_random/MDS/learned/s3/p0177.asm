.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc bx, ax
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and bl, dl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 100
and rdx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and dil, cl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
jmp .bb_0.3
.bb_0.3:
test ecx, -1843375753
and eax, 454700988
or al, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
