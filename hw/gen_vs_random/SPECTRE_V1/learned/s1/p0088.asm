.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], -113
add dl, sil
sbb ebx, 59
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
xchg rcx, rdi
setz dl
lea rax, qword ptr [rsi]
jmp .bb_0.2
.bb_0.2:
lea ax, qword ptr [rdx]
add al, -65
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
lea dx, qword ptr [rax + rcx]
bts ebx, 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
