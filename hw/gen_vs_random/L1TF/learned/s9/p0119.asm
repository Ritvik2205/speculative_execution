.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -2
lea edi, qword ptr [rbx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], bx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdx
sub al, -3
sbb bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
