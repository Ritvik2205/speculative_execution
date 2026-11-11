.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
imul al
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
add dl, 47
jl .bb_0.2
jmp .exit_0
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
and al, -54
and ax, 25351
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
