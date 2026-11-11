.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 61
xor cl, bl
and rax, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rax]
adc bl, dl
lea ax, qword ptr [rcx + rdx + 20]
lea edi, qword ptr [rbx]
or cl, 105
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
