.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
and si, -121
test cl, cl
bts rsi, 221
xor sil, al
jmp .bb_0.1
.bb_0.1:
xor al, -89
test dil, -80
or ax, -6817
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
xor esi, 84
test al, bl
xor al, 122
or bl, 13
xor ax, -4010
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
