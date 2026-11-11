.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -82
and al, -23
xor cl, cl
or al, 100
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
or bx, 9
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
lea rbx, qword ptr [rdi + rcx + 82]
jnz .bb_0.2
jmp .exit_0
.bb_0.2:
add sil, cl
adc dil, dl
sbb sil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
