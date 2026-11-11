.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, cl
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx]
cmp al, sil
and rdx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdx]
cmp cl, 57
jnbe .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
jl .bb_0.3
jmp .bb_0.4
.bb_0.3:
jnle .bb_0.4
jmp .exit_0
.bb_0.4:
lea rax, qword ptr [rdx + rax]
lea rcx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
