.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rsi]
sbb al, 49
cmovno bx, di
test al, 34
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], al
lea di, qword ptr [rdi]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
