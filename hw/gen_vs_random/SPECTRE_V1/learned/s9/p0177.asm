.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -62
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
xor rbx, -34
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
lea rdi, qword ptr [rcx + rsi + 51]
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
xchg rdx, rcx
and rdi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 2
and sil, 52
xor rdx, 65
test cl, -120
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
