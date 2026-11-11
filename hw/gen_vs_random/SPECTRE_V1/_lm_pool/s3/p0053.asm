.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdx]
sbb al, 104
bt edx, 10
add cl, 110 # instrumentation
cmovb rax, rcx
and dl, -111
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
or al, dl
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], -46
sbb sil, -78
jmp .bb_0.1
.bb_0.1:
xor dil, -37
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
