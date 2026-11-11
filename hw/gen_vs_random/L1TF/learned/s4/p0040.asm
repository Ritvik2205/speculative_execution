.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rbx]
and ebx, -52
sbb dl, cl
xor eax, 965442135
cmp al, 27
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
lea rax, qword ptr [rcx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
