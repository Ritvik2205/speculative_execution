.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 19
sbb sil, dil
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], ax
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp dl, -115
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 53
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rdx
lea rcx, qword ptr [rax + rbx]
lea rax, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
