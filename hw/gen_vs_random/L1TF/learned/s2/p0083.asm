.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
lea eax, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
xchg ebx, eax
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
or ax, -10161
sbb al, dil
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
