.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, cl
sub cl, -47
and bl, dil
test al, 48
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
mov cl, al
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
bt edi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
