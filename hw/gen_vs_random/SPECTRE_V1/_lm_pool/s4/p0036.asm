.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
lea rbx, qword ptr [rsi + rdi + 98]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
setnb dil
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
xchg rdi, rdx
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
lea ax, qword ptr [rbx + rdi + 64]
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
js .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
