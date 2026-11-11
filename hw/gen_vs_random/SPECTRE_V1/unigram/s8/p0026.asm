.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rbx
adc dl, dil
imul esi
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
add bl, -58 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rax]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb bl, sil
and rcx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rax], 95
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dil
xchg ebx, edi
cmovnbe rax, rbx
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], bl
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 77
imul edi
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
