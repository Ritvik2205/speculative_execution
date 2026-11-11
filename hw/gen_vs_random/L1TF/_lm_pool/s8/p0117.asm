.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, cl
sbb bl, dl
not eax
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rdi
and rdi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 7
add al, -102
lea bx, qword ptr [rax + rbx + 47]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
btc cx, ax
xor al, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
