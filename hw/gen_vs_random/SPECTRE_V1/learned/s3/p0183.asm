.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
cmp rdx, -19
sub al, dl
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, bl
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], bl
add al, 10
jnp .bb_0.3
jmp .exit_0
.bb_0.3:
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
btc edi, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
