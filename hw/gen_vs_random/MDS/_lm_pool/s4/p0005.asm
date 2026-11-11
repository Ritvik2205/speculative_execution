.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -88
or al, 16
or bl, dl
xor al, 115
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
xor al, -89
and sil, -69
and dil, dil
jmp .bb_0.1
.bb_0.1:
or cl, bl
or cl, -36
xor sil, -14
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
