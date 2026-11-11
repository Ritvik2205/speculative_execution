.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rsi
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
and di, 10
setp cl
or cl, dil
jmp .bb_0.1
.bb_0.1:
btc ax, cx
btc di, si
test dl, -37
sbb eax, -1165635662
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
