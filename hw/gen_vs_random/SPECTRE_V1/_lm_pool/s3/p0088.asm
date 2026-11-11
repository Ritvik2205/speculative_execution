.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, bl
and rax, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rax]
and cl, 86
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], bx
setz sil
xor eax, 55
sub rcx, 13
and rsi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rsi]
adc bl, -73
sbb edi, 29
or bl, al
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
