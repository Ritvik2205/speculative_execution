.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, -66
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx], 42
btc ax, si
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 97
lea cx, qword ptr [rdx]
jl .bb_0.3
jmp .exit_0
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
