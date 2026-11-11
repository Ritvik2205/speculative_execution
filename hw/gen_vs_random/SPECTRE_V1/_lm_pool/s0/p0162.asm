.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, -31
and rdi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdi]
cmp ecx, 9
add rax, 913062684
cmp rbx, 74
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
inc ebx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
add cl, -127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
