.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdi
lea rbx, qword ptr [rdx + rdi + 32]
mov dil, sil
sub dl, cl
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and dil, dil
and rsi, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rsi]
add bl, al
jns .bb_0.3
jmp .bb_0.4
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
lea dx, qword ptr [rax + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
