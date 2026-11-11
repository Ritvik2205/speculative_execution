.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
sbb esi, 30
xor sil, 64
cmp ax, 7046
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
lea ecx, qword ptr [rsi]
sbb dl, -26
sbb sil, 19
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
add al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
