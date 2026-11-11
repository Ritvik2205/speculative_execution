.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
or ax, 12618
setnp cl
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], al
or dil, cl
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], dx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], eax
movsx ax, al
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], -75
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
setnz dil
adc si, -95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
