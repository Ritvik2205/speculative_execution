.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
xor esi, 69
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 7
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 3
or bl, -88
jmp .bb_0.1
.bb_0.1:
jl .bb_0.2
jmp .exit_0
.bb_0.2:
xor cx, 113
lea eax, qword ptr [rdi + rdi + 75]
cmp al, -119
sbb al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
