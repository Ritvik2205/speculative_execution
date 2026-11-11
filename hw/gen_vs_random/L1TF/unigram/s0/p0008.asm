.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb ax, -9869
cmovnp eax, esi
add al, 117
and rdi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rdi
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
and rax, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rax]
or rax, -82
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], bx
and rax, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
add al, -9 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], 95
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 96
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
