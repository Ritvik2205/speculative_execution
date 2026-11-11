.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 7954
or cl, dl
movsx eax, dl
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 83
jmp .bb_0.1
.bb_0.1:
xor al, dl
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
test al, -56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
