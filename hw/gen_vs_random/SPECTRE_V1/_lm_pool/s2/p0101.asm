.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, -118
mov dil, cl
and rdx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdx]
add dl, 47
test dl, -36
js .bb_0.1
jmp .exit_0
.bb_0.1:
sbb bl, cl
and rdx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdx]
and al, 33
add sil, dl
cmp ax, -11439
jno .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
