.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg dx, ax
and rdi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdi]
test sil, -101
add bl, 106 # instrumentation
cmovs ecx, eax
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], bx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdi
and rsi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rsi]
add cl, 20 # instrumentation
cmovnbe rax, rcx
add bl, 112 # instrumentation
setnbe dil
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 93
and rsi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
