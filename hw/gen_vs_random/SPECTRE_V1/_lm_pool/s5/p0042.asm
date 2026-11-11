.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], cx
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 92
and rbx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rbx]
add dil, 72
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
add al, sil
sbb al, 49
and rcx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
xor al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
