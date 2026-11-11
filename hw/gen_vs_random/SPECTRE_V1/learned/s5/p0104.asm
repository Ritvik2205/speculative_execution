.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 40
xor cl, 78
xchg eax, edx
sbb dl, bl
inc al
test cl, -24
and rdi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdi]
sbb al, 49
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
test ebx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
