.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, al
xor dil, -37
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rbx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rbx]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb bl, sil
and bl, bl
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
lea rcx, qword ptr [rdx + rdx + 95]
lea bx, qword ptr [rdi + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
xchg al, dil
jle .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
