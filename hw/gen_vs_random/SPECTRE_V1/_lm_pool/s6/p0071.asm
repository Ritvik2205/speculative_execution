.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
add dil, -75
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rdx
add bl, 70
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 55
add dl, bl
jmp .bb_0.1
.bb_0.1:
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 57
inc eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
