.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 43
or cl, bl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1626470119
or ax, -6817
or cl, -77
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 51
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
or ax, -7150
test eax, -1634766116
or rax, -1523798580
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
jmp .bb_0.2
.bb_0.2:
xor al, 115
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
