.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 59
or dx, 55
test bl, dil
test al, -56
adc al, bl
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and bl, -56 # instrumentation
cmovnle edi, ebx
xor cl, dil
and dl, -49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
