.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, -18
cmovns cx, si
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and bl, 68
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rdx, 86
or dx, 125
bt bx, dx
jmp .bb_0.1
.bb_0.1:
test eax, -675944960
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
xor sil, dil
or rax, 1461812833
and cl, -111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
