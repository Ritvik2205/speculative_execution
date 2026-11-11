.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, cl
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
not edx
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rsi]
jnp .bb_0.3
jmp .bb_0.4
.bb_0.3:
adc bx, 85
add bl, cl
add bl, -95
jl .bb_0.4
jmp .exit_0
.bb_0.4:
and rdi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdi]
cmp dil, -58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
