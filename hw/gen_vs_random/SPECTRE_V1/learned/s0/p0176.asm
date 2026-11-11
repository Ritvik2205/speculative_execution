.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea ax, qword ptr [rbx]
cmovle rsi, rcx
jb .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
cmovno ax, bx
jp .bb_0.3
jmp .exit_0
.bb_0.3:
adc dil, bl
add al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
