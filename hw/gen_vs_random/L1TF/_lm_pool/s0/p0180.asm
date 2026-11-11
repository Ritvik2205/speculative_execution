.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 21 # instrumentation
adc ax, 72
add dil, 88
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
and dil, 58
and ax, 37
jmp .bb_0.1
.bb_0.1:
test al, -82
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
or rax, 1362710293
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
