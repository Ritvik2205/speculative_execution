.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 7
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 81
mov dil, 86
adc cl, bl
sbb sil, -78
test ax, -30637
sbb bl, dil
and rdi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdi]
sbb cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
