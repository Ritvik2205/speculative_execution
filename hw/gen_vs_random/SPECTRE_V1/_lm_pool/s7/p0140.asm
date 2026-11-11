.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 12 # instrumentation
cmovnb ecx, edx
and rax, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdi]
cmp cx, 88
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
test al, 48
jp .bb_0.1
jmp .exit_0
.bb_0.1:
xchg sil, dil
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
