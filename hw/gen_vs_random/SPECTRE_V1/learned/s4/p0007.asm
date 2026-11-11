.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
cmp bx, 56
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
xchg rbx, rax
and bl, -43
cmp bl, sil
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and cl, -57
not cx
sbb eax, 99727957
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
