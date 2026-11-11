.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -79
xor rbx, 74
test bl, 84
add cl, -20
and rcx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rcx]
and sil, bl
jmp .bb_0.1
.bb_0.1:
cmovnp rax, rdi
jmp .bb_0.2
.bb_0.2:
test cl, 21
add edi, 87
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
