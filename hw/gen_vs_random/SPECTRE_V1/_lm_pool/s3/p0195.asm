.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 34
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
or ecx, 10
xchg rdi, rsi
jp .bb_0.1
jmp .exit_0
.bb_0.1:
test dl, -105
btc bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
