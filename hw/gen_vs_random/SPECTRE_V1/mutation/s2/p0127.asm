.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -78
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -37
cmp rax, -1877933118
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -60
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 0 # instrumentation
adc dl, bl
test rax, -1638758413
lea rdx, qword ptr [rcx + rdx + 44106]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 46
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
or rdi, rcx
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
or al, dl
and ecx, -38
mov al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
