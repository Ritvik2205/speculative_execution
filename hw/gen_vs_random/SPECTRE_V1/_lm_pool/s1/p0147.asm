.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
dec al
adc al, bl
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
mov bl, sil
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
mov dil, 19
lea ax, qword ptr [rdx + rsi + 50]
jns .bb_0.3
jmp .exit_0
.bb_0.3:
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
inc rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
