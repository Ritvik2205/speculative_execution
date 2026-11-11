.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 21
and rax, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rax]
sbb al, -112
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
lea ax, qword ptr [rdx + rsi + 4]
adc eax, 1725322202
and rdi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdi]
lea ax, qword ptr [rbx + rsi + 22]
add cl, -127
jl .bb_0.1
jmp .exit_0
.bb_0.1:
add al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
