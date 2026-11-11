.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, cl
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
test al, dl
or al, bl
test eax, -571234566
xor al, bl
or rsi, 42
and bl, bl
xor dl, 8
or cl, 6
and sil, dl
xor rbx, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
