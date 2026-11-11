.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -31
sbb al, bl
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 51
and rax, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rax]
js .bb_0.1
jmp .exit_0
.bb_0.1:
xor bl, dil
and al, -23
and rdi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdi]
sub dil, -32
adc al, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
