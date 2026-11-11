.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 18
and rbx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jl .bb_0.2
jmp .exit_0
.bb_0.2:
sbb ecx, 98
and ax, 2806
add dl, 47
cmp ax, -11439
test al, 42
lea rax, qword ptr [rsi]
sbb al, 118
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
