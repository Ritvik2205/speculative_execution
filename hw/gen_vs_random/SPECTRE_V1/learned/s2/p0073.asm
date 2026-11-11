.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 38
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
btc eax, 11
and rdi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdi]
adc al, -92
sbb cl, 105
sub al, cl
sbb dl, 127
test bl, -8
sbb cl, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
