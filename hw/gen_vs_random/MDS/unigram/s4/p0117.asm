.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts dx, 167
and al, 93
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and dl, 110 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 85
and rdx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 91
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rax
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ebx
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7
cmovo rdx, rsi
xor eax, 1170472196
cmovno ax, dx
and rbx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rbx]
and dl, -33 # instrumentation
cmovns rax, rax
or rax, 1749358813
and cl, -109 # instrumentation
not rsi
and ax, 30884
cmovb rsi, rbx
and rsi, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
