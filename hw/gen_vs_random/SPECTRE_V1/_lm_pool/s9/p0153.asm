.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx eax, cx
lea rax, qword ptr [rbx]
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
add rdi, 56
jnz .bb_0.2
jmp .bb_0.3
.bb_0.2:
js .bb_0.3
jmp .bb_0.4
.bb_0.3:
sbb cl, al
jns .bb_0.4
jmp .exit_0
.bb_0.4:
lea dx, qword ptr [rsi + rcx + 91]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
