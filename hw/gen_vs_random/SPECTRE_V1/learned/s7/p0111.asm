.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rsi], 55
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
cmovs rdi, rdi
test cl, -120
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
test cl, -33
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and cl, al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
add al, -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
