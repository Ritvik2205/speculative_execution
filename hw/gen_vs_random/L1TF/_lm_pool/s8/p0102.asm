.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 104 # instrumentation
mov ecx, 67
xor dil, -42
cmp cx, 39
jmp .bb_0.1
.bb_0.1:
cmovns rax, rbx
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
jl .bb_0.3
jmp .exit_0
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
