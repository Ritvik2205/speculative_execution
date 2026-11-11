.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 13
sub al, cl
test cl, -120
sub al, 63
and rdx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdx], 21
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
lea rcx, qword ptr [rdi + rbx + 83]
add dil, 72
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], sil
sub rsi, 97
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
