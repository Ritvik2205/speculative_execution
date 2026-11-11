.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], ax
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
add bl, sil
inc rax
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
jnle .bb_0.3
jmp .bb_0.4
.bb_0.3:
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
jmp .bb_0.4
.bb_0.4:
test dil, -116
sbb al, -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
