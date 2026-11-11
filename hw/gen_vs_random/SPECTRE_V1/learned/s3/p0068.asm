.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
sbb eax, -108
adc rdx, rsi
bts bx, 22
and al, -23
xor dl, cl
and dl, bl
sub di, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
