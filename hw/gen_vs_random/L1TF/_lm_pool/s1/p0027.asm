.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rdi]
and edx, 16
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 35
add sil, -61
sbb al, sil
add dil, 88
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmovnp ax, si
add esi, -124
jmp .bb_0.2
.bb_0.2:
and dil, 32 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
