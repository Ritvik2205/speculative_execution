.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, 8
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
sbb al, -23
and rdx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdx]
and rax, 1163013815
jmp .bb_0.1
.bb_0.1:
add dl, -52 # instrumentation
adc ax, 48
xor dil, -42
not dl
and rsi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
