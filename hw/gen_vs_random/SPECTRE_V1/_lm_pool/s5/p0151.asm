.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 40 # instrumentation
btc rbx, rbx
sbb sil, dl
add al, 3
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdi]
jnle .bb_0.4
jmp .bb_0.5
.bb_0.4:
inc al
jns .bb_0.5
jmp .bb_0.6
.bb_0.5:
jnz .bb_0.6
jmp .exit_0
.bb_0.6:
add sil, cl
or dx, 0b1000000000000000 # instrumentation
bsf bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
