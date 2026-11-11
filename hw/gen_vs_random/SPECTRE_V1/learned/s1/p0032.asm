.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
test bl, -8
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
adc ax, 24404
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edx
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
