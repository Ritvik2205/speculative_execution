.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
add al, al
not dl
cmovb dx, cx
cmp ecx, 20
and si, 14
btc eax, 220
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi]
sbb dil, al
or ax, -18131
or si, 0b1000000000000000 # instrumentation
bsf bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
