.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
or dl, bl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 29
test ecx, -1843375753
and dx, 60
jmp .bb_0.3
.bb_0.3:
and dil, dil
and rsi, 12
or dil, 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
