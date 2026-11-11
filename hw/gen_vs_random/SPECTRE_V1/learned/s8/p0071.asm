.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea si, qword ptr [rsi]
lea si, qword ptr [rax]
mul rcx
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
lea bx, qword ptr [rcx + rsi + 65]
and dl, -109
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ecx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
mov cl, dil
or rcx, 69
cmp dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
