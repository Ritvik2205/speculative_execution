.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rax]
or dx, dx
or al, 100
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
lea ax, qword ptr [rcx + rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dil
xor dil, bl
test dil, -116
lea rsi, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
