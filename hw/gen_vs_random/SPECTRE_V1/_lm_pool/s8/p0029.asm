.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rsi]
mov sil, al
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
test dil, -116
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
lea bx, qword ptr [rdx + rdi]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
and rcx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rcx]
jl .bb_0.3
jmp .exit_0
.bb_0.3:
lea cx, qword ptr [rbx + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
