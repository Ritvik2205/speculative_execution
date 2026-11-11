.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
xor al, 115
xor al, 8
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
or bl, dil
or bx, 26
xor sil, -15
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ecx
test ecx, -1843375753
not sil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and sil, sil
or al, -75
xor sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
