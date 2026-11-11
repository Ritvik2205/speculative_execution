.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, eax
add bl, cl
add cl, dl
lea ax, qword ptr [rsi + rdx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
setnz cl
sbb sil, al
sbb al, 104
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
