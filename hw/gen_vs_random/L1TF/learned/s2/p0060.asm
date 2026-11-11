.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, ecx
cmp eax, 123533400
test sil, 29
and bx, 80
xor rdi, rbx
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
xor dil, -42
jmp .bb_0.1
.bb_0.1:
test cl, al
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
lea rdi, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
