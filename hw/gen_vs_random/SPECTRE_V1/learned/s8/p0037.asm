.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
cmovnle rcx, rdx
mov cl, sil
sbb cl, 105
and rsi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rsi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 47
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
xor dil, bl
or ax, 0b1000000000000000 # instrumentation
bsf dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
