.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
sbb cl, sil
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rsi]
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and sil, 52
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
js .bb_0.3
jmp .exit_0
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdx]
sbb sil, sil
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
