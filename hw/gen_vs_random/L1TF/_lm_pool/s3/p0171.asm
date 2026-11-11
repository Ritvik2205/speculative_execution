.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
and eax, -409673666
sbb al, -50
or dl, -92
jmp .bb_0.1
.bb_0.1:
lea si, qword ptr [rdx]
lea rcx, qword ptr [rsi + rbx]
test dl, 84
and dl, al
mov bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
