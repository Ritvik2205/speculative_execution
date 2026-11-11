.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
test ecx, 10
and dl, dil
add sil, al
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
test cl, 5
setz al
and rax, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
xchg rdi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
