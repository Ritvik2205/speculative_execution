.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
sbb ebx, 30
cmp rax, -72548874
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 69
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and cl, bl
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
jp .bb_0.3
jmp .exit_0
.bb_0.3:
sbb bl, -41
lea bx, qword ptr [rbx + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
