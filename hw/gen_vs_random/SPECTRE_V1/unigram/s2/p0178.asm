.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
adc eax, 34
cmovno rbx, rcx
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], cx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp rbx, rsi
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 19
and rcx, -29
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rbx
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ecx
and rsi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 89
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
