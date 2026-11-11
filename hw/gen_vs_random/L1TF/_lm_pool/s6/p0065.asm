.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rsi]
and al, -68
and rbx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
sub dl, 41
lea ebx, qword ptr [rdx]
test dl, 84
add dl, -70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
