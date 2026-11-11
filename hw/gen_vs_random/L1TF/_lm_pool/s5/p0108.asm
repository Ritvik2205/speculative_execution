.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 40 # instrumentation
btc rcx, rcx
and rax, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 47
lea rdi, qword ptr [rbx + rsi + 20302]
jmp .bb_0.1
.bb_0.1:
add dil, 42 # instrumentation
lea ebx, qword ptr [rdi + rbx]
xor bx, 35
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ecx
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edx
add dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
