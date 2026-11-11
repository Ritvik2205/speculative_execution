.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -43
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rbx], cx
lea ax, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rcx]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jno .bb_0.2
jmp .bb_0.3
.bb_0.2:
jle .bb_0.3
jmp .bb_0.4
.bb_0.3:
js .bb_0.4
jmp .bb_0.5
.bb_0.4:
test dl, -7
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 94
jle .bb_0.5
jmp .exit_0
.bb_0.5:
sbb dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
