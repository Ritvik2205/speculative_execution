.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 40 # instrumentation
btc rbx, rbx
sbb dil, -106
add edi, -91
and rcx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rcx]
mov al, dl
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea rax, qword ptr [rbx + rcx + 87]
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnp .bb_0.3
jmp .bb_0.4
.bb_0.3:
imul dl
jmp .bb_0.4
.bb_0.4:
lea rdi, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
