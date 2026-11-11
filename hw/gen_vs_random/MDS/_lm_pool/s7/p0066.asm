.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
xor sil, -14
or bx, 48
and cx, -8
test sil, bl
and sil, dl
test dl, 9
and bx, 25
test al, 91
xor al, 34
and al, 75
or ax, 16560
xor rdx, -59
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
