.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp rbx, 60
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
adc al, dil
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
or ecx, 71
lea rcx, qword ptr [rax + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
