.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], cx
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
movzx rcx, ax
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 78
and rdi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdi]
not bl
and rax, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rax]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 30
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add bl, 112 # instrumentation
cmovnb ax, bx
cmovb rsi, rax
or edx, 4
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdi
and rdi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
