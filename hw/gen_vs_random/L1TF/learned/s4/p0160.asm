.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rbx]
xor rdi, rdi
cmovp edx, ebx
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
xchg eax, edi
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
bts bx, 32
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], al
xor cl, dil
add sil, -111
cmovnp ecx, edi
cmovp ebx, edi
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], cl
mov rdx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
