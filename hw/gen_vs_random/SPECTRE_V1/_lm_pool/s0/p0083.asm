.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdi
test al, -126
add cl, -127
lea bx, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
test cl, -62
sub dl, -12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
