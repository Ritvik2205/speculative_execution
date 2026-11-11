.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 92
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
bt edx, 98
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
add dil, -75
jle .bb_0.3
jmp .exit_0
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rcx]
xor sil, cl
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
