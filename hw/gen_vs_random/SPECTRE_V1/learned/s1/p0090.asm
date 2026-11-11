.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 31
cmp rax, 1189904463
cmp rsi, 53
xor dil, cl
and cl, -57
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rbx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
