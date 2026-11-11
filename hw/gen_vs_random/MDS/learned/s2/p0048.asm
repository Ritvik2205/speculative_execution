.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and dl, al
and cl, 79
jmp .bb_0.1
.bb_0.1:
or al, 74
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
and al, 84
and ax, 19224
or ax, -4210
xor cl, -13
test dil, -80
and dil, -62
test dl, 9
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
xor bl, -61
or rax, -141551502
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
