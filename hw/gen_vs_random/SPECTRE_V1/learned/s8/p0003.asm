.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
mov dil, bl
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jb .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], -46
jp .bb_0.3
jmp .exit_0
.bb_0.3:
or bx, 9
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax], 8
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
