.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
sbb dil, bl
add al, 3
and bl, sil
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and dil, bl
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
xchg rax, rdx
lea cx, qword ptr [rsi + rdi]
xchg ebx, eax
xor dl, 71
or al, dil
inc rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
